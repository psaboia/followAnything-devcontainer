# https://hub.docker.com/layers/nvidia/cuda/11.1.1-cudnn8-devel-ubuntu20.04/images/sha256-e014cb0151b818b56c4e61a95c4c2050d7c9ee7351e1b20d8e3007fcecbfb4d4?context=explore

#FROM nvidia/cuda:10.2-base-ubuntu18.04
#FROM nvidia-cuda-10.2-base-ubuntu18.04-x86_64-sha256-dcd65833ec93ffde8ea66dfb59d33339fc2eb791253a4c0ae784b9f6c1166635.tgz 

FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

# Update and install basic libraries
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y wget software-properties-common build-essential git curl ffmpeg libsm6 libxext6

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update
RUN apt-get install python3.9 python3.9-distutils python3.9-dev python3.9-venv -y

# python3.9 -m venv venv
RUN python3.9 -m ensurepip --upgrade
RUN pip3 --version
#RUN source venv/bin/activate


#RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#RUN python3.9 get-pip.py

# Install general dependnecies 
COPY requirements.txt /tmp/install-tmp/
RUN if [ -f "/tmp/install-tmp/requirements.txt" ]; then umask 0002 && pip3 install -r /tmp/install-tmp/requirements.txt && rm -rf /tmp/install-tmp; fi
RUN apt-get install python3-twisted-bin

# Install pytorch with CUDA 11.1
RUN pip3 install torch==1.9.1+cu111 torchvision==0.10.1+cu111 torchaudio==0.9.1 -f https://download.pytorch.org/whl/torch_stable.html




