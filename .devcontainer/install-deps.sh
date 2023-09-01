#!/bin/bash
# Install libs for SAM-Track
echo "> Installing libs for SAM-Track..."
#bash Segment-and-Track-Anything/script/install.sh
cd Segment-and-Track-Anything

# Install SAM
echo "> Installing SAM..."
cd sam; pip3 install -e .
cd -

# Install Pytorch Correlation
echo "> Installing Pytorch Correlation..."
git clone https://github.com/ClementPinard/Pytorch-Correlation-extension.git
cd Pytorch-Correlation-extension; python3.9 setup.py install
cd -

# Download models
echo "> Downloading models..."
# a. SAM model to Segment-and-Track-Anything/ckpt directory,
#    the default model is SAM-VIT-B (sam_vit_b_01ec64.pth).
#wget -P ./ckpt https://dl.fbaipublicfiles.com/segment_anything/sam_vit_b_01ec64.pth

#  model is SAM-VIT-B used in tutorials (sam_vit_h_4b8939.pth).
#wget -P ./ckpt https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth

# b. DeAOT/AOT model to Segment-and-Track-Anything/ckpt directory,
#    the default model is R50-DeAOT-L (R50_DeAOTL_PRE_YTB_DAV.pth).
#gdown -O  ./ckpt/R50_DeAOTL_PRE_YTB_DAV.pth https://drive.google.com/uc?id=1QoChMkTVxdYZ_eBlZhK2acq9KMQZccPJ

cd ../

echo "> Done!"

zsh