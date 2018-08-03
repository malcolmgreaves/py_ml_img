# py_ml_img
A [Docker](https://www.docker.com/) image for Python development in natural 
language processing: useful as a base for other NLP+ML projects. 

Uses `conda` for Python package management.


# Use
To use the latest image, do:
```bash
docker pull "malcolmgreaves/py_ml_img:${VERSION}"
```

Where `VERSION` is the latest one on [Dockerhub](https://hub.docker.com/r/malcolmgreaves/py_ml_img/tags/).


# Build
To build the image, execute:
```bash
docker build -f Dockerfile -t py_ml_img .
```


# Libraries
The image explicity contains the following Python 3.6 packages:
- NLP libraries (`spacy`, `nltk`)
- pylab (`matplotlib`, `scipy`, `numpy`)
- optimized native code (`openblas`, `cython`)

