#!/bin/bash

# 安全対策：エラーが出たらスクリプトを止める
set -eo pipefail

# 作業ディレクトリへ移動
cd /workspace

# 仮想環境を有効化（VAST標準）
source /venv/main/bin/activate

echo "✅ 仮想環境を有効化しました"

# AUTOMATIC1111 をクローン
echo "⬇️ AUTOMATIC1111 をクローン中..."
git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git /workspace/stable-diffusion-webui

# ControlNet を拡張としてインストール
echo "⬇️ ControlNet 拡張をインストール中..."
git clone https://github.com/Mikubill/sd-webui-controlnet.git /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet

# モデルをGoogle Driveから同期
echo "⬇️ Google Driveからモデルを同期中..."
rclone sync gdrive:models_fb /workspace/stable-diffusion-webui/models/Stable-diffusion
rclone sync gdrive:ControlNet /workspace/stable-diffusion-webui/extensions/sd-webui-controlnet/models

# テストファイルの作成（実行確認用）
echo "✅ セットアップ完了：$(date)" > /workspace/setup_complete.txt

echo "🎉 すべてのセットアップが完了しました！"
