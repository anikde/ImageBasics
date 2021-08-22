FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get update \
	&& apt-get upgrade --yes \
	&& apt-get install --yes \
	ca-certificates \
	apt-transport-https \
	apt-utils \
	gnupg software-properties-common \
	wget curl

RUN apt install --yes tree

RUN pip install matplotlib \
	pip install opencv-python

RUN apt update
RUN apt-get install ffmpeg libsm6 libxext6  -y

RUN	python3 -m pip install --upgrade pip

# path on entry
WORKDIR /root/

## to open another interective terminal
## docker exec -it docker-gpu
