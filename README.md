# Adversarial robustness

This repository contains the slides and notebook code I use for teaching about adversarial robustness, in particular the [VAIA course](https://www.vaia.be/nl/).

## Slides

The slides are available in RevealJS format under the `slides/` directory. Simply open the `index.html` file or, preferably, run the server:

```bash
~/vaia-robustness/slides$ python server.py 
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```

Then navigate to [http://0.0.0.0:8000/](http://0.0.0.0:8000/) in any browser to view the presentation.

## Notebook

A Jupyter notebook containing all example code is available under the `notebooks/` directory. You can run it yourself using [Jupyter](https://jupyter.org/) or use the [Docker container](https://www.docker.com/):

```bash
~/vaia-robustness/notebooks$ docker build . -t vaia-robustness
~/vaia-robustness/notebooks$ docker run -p 8888:8888 --gpus=all --mount type=bind,source="$(pwd)",target=/notebooks vaia-robustness
```

This may take a while the first time you run it, as a lot of packages need to be installed and configured. When finished, a Jupyter server should be setup and available at [](), where you can view and/or run the code.

Note that [NVIDIA Docker](https://github.com/NVIDIA/nvidia-docker) is required along with a suitable GPU on your machine to run the code on the GPU. If you cannot run the GPU version, you can use these commands for the CPU-only version:

```bash
~/vaia-robustness/notebooks$ docker build . -t vaia-robustness
~/vaia-robustness/notebooks$ docker run -p 8888:8888 --mount type=bind,source="$(pwd)",target=/notebooks vaia-robustness
```
