# Machine Learning in Python Cookbook Runner

Dockerized Jupyter notebook for running content from the [2nd Edition of the Machine Learning in Python Cookbook](https://www.oreilly.com/library/view/machine-learning-with/9781098135713/).

## Running the Notebook

To create and run notebooks using Python 3.10 with docker, we can build an image and run a container with this working directory mounted as a volume:

```bash
DOCKER_BUILDKIT=1 docker build -t machine-learning-cookbook .
docker run -it -v $(pwd):/workspace -p 8888:8888 ml-python-cookbook-runner 
```

Go to http://localhost:8888 to open notebooks and run them (you may need the token that's printed out in the terminal).

## TODOs

- The image is _massive_ with all requirements added, slim it down as much as possible
- Break out the requirements into individual files or sets of files per chapter to avoid installing _everything_
- Pin the dependencies so nothing breaks down the road
