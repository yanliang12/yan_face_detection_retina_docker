#############Dockerfile##############
FROM python:3.7

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl


RUN pip install keras==2.2.0
RUN pip install numpy==1.21.0
RUN pip install Pillow==8.3.1
RUN pip install Flask==2.0.1
RUN pip install scipy==1.7.0
RUN pip install h5py==3.3.0
RUN pip install opencv-python==4.5.3.56
RUN pip install pandas==1.3.0
RUN pip install gdown==3.13.0
RUN pip install retina_face==0.0.3
RUN pip install torch==1.9.0
RUN pip install torchvision==0.10.0
RUN pip install scikit-image==0.18.2

RUN pip install git+https://github.com/elliottzheng/face-detection.git@master

RUN git clone https://github.com/yanliang12/yan_facenet_docker.git
RUN mv yan_facenet_docker/* ./
RUN rm -r yan_facenet_docker

CMD bash
#############Dockerfile##############
