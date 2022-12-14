FROM tensorflow/tensorflow:latest-gpu

RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/3bf863cc.pub
RUN apt update -y
RUN apt install -y git

RUN pip install --upgrade pip
RUN pip install torch torchvision torchaudio
RUN pip install statsmodels matplotlib scikit-learn adversarial-robustness-toolbox foolbox
RUN pip install git+https://github.com/RobustBench/robustbench.git
RUN pip install jupyter jupyterlab ipywidgets

CMD jupyter lab --allow-root --notebook-dir=/notebooks --ip=0.0.0.0
