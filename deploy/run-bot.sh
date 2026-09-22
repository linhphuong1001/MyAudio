#!/usr/bin/env bash
# Chạy định kỳ bằng cron, ví dụ mỗi 6 giờ:
#   0 */6 * * * /home/ubuntu/AudioApp/deploy/run-bot.sh >> /home/ubuntu/bot.log 2>&1
set -euo pipefail

cd "$(dirname "$0")/../bot-pipeline"
source venv/bin/activate

python pipeline.py generate "Kiếm hiệp" --num-sources 3 || echo "generate thất bại, bỏ qua lượt này"
python pipeline.py tts --provider "${TTS_PROVIDER:-gtts}" --limit 20
