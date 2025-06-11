#!/bin/bash

#AUTOMATIC1111
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /workspace/stable-diffusion-webui

cd /workspace/stable-diffusion-webui

# ControlNet 拡張をインストール
git clone https://github.com/Mikubill/sd-webui-controlnet.git extensions/sd-webui-controlnet

# モデルの同期

#rclone sync gdrive:models_fb models/Stable-diffusion
#rclone sync gdrive:ControlNet extensions/sd-webui-controlnet/models

echo "これは自動生成されたテキストファイルです。" > /workspace/testfile.txt


