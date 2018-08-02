FROM continuumio/miniconda3

###
### install python tools & core deps
###

# install deps required to build python packages
RUN apt-get update                                                   
RUN apt-get upgrade -y

# The libgomp1 library is needed for spacy to work.
# build-essential, python-dev are required for building & running essential python
RUN apt-get install -y libgomp1 build-essential python-dev

# update conda & pip
RUN conda update conda -y
RUN pip install --upgrade pip

###
### install the base ML, NLP, DL, etc. libraries
###

# install openblas and nltk in a python 3.6.x envrionment
RUN conda install \
  python=3.6.* \
  matplotlib=2.2.* \
  scipy=1.0.* \
  numpy=1.12.* \
  openblas=0.2.* \
  cython=0.26.* \
  nltk=3.2.*

# install spacy & get the spacy english model
RUN pip install spacy==2.0.*
RUN python -m spacy download "en_core_web_md"

# get nltk's wordnet, punkt, and stopwords data
RUN python -m nltk.downloader wordnet && \
      python -m nltk.downloader punkt && \
      python -m nltk.downloader stopwords
