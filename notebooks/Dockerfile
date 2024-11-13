FROM pytorch/pytorch:2.5.1-cuda12.4-cudnn9-devel

RUN apt update -y
RUN apt install -y git

RUN pip install --upgrade pip
RUN pip install statsmodels matplotlib scikit-learn adversarial-robustness-toolbox foolbox
RUN pip install git+https://github.com/RobustBench/robustbench.git
RUN pip install jupyter jupyterlab ipywidgets

CMD jupyter lab --allow-root --notebook-dir=/notebooks --ip=0.0.0.0
