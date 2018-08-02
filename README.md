# py_ml_img
A [Docker](https://www.docker.com/) image for Python development in natural 
language processing: useful as a base for other NLP+ML projects. 

Uses `conda` for Python package management.


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

