#!/bin/bash

#AUTOMATIC1111
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /workspace/stable-diffusion-webui

cd /workspace/stable-diffusion-webui

# ControlNet 拡張をインストール
git clone https://github.com/Mikubill/sd-webui-controlnet.git extensions/sd-webui-controlnet

# モデルの同期

rclone sync gdrive-gr:models_fb models/Stable-diffusion
rclone sync gdrive-gr:ControlNet extensions/sd-webui-controlnet/models

#起動
#cd /workspace/stable-diffusion-webui
#python launch.py --listen --port 7860 --xformers &
#

pkill -f launch.py
# 起動メッセージ
echo "Starting AUTOMATIC1111..."
# WebUI 起動
cd /workspace/stable-diffusion-webui
nohup python3 launch.py --listen --port 7860 --xformers > /workspace/webui.log 2>&1 &

#echo "これは自動生成されたテキストファイルです。" > /workspace/testfile.txt


