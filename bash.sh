#!/usr/bin/env bash
step=$1
name=$2
sign=$3
# realistic fidelity
## Getting Started
echo "step:$step"
echo "process file name:$name "
echo "style:$sign"

if [ $step = "help" ]
then
	echo "Before start, make sure you have ffhq.pt, seg.pth in pretrained_models"
	echo "Before start, make sure you have shape_predictor_68_face_landmarks.dat in cache_back"
	echo "Before start, make sure you have II2S_Images in input/face floder (style lib)"
fi

if [ $step == 'align' ]
then
	echo "Preprocess your own images. Please put the raw images in the `unprocessed` folder."
	CUDA_VISIBLE_DEVICES=1 python3 align_face.py
fi

if [ $step == 'produce' ]
then
	echo "Produce $sign results:"
	CUDA_VISIBLE_DEVICES=1 python3 main.py --im_path1 $name --im_path2 15.png --im_path3 117.png --sign $sign --smooth 5
fi

if [ $step == "all" ]
then
	echo "process image and produce result"
	CUDA_VISIBLE_DEVICES=1 python3 align_face.py
	CUDA_VISIBLE_DEVICES=1 python3 main.py --im_path1 $name --im_path2 15.png --im_path3 117.png --sign $sign --smooth 5
fi
