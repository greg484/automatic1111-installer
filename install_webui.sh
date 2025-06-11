#!/bin/bash

cd stable-diffusion-webui

# ControlNet 拡張をインストール
git clone https://github.com/Mikubill/sd-webui-controlnet.git /extensions/sd-webui-controlnet

#cd /opt/stable-diffusion-webui/extensions
#git clone https://github.com/Mikubill/sd-webui-controlnet.git

# rclone でモデルを同期（Google Drive -> WebUI）
# WebUIのルートに戻ってから同期
#cd stable-diffusion-webui

rclone sync gdrive:models_fb /stable-diffusion-webui/models/Stable-diffusion
#rclone sync gdrive:models/ControlNet /opt/stable-diffusion-webui/extensions/sd-webui-controlnet/models
