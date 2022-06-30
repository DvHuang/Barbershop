FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

RUN apt update \ 
    apt install -y python3 \
    apt install -y python3-pip \
    pip3 install --upgrade pip \
    apt-get install git \
    apt-get install cmake \
    apt-get install lrzsz \
    apt-get install vim \
    apt-get install libgl1-mesa-glx \
    git clone https://github.com/DvHuang/Barbershop.git


RUN pip3 install tensorflow-gpu==1.14.0 scipy==1.3.3 requests==2.22.0 Pillow==6.2.1 h5py==2.9.0 imageio==2.9.0 imageio-ffmpeg==0.4.2 tqdm==4.49.0 torch==1.4.0 torchvision==0.5.0 pandas numpy pillow==6.2.1 opencv-python scikit-learn matplotlib seaborn jupyterlab ninja dlib==19.22.1 scikit-image opencv-python==4.5.4.58 gdown==4.2.0 requests-file

# Downloading: "https://download.pytorch.org/models/vgg16-397923af.pth" to /root/.cache/torch/checkpoints/vgg16-397923af.pth
# ffhq.pt
# seg.pth
# predict.pt
