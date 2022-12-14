#!/bin/bash

docker build . -t vaia-robustness
docker run -p 8888:8888 --gpus=all --mount type=bind,source="$(pwd)",target=/notebooks vaia-robustness
