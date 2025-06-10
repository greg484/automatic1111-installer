#!/bin/bash

# WebUI を /opt に clone
cd /opt
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git

# ControlNet 拡張をインストール
cd /opt/stable-diffusion-webui/extensions
git clone https://github.com/Mikubill/sd-webui-controlnet.git

# モデルを同期（Google Drive -> WebUI）
#cd /opt/stable-diffusion-webui
#rclone sync gdrive:models/Stable-diffusion ./models/Stable-diffusion
#rclone sync gdrive:models/ControlNet ./extensions/sd-webui-controlnet/models

# WebUI 起動
./webui.sh
