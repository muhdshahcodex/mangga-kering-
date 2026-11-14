#!/usr/bin/env bash
# Downloads the 5 source clips from Google Drive and makes 1080x1920 proxies in assets/footage/.
set -euo pipefail
cd "$(dirname "$0")"
pip install -q gdown
mkdir -p assets/footage raw
ids=(1h5iCaZbATJG5cXFj-uMeOloSS-kOskpv 1t2xiIZCJIni91Qm9kZfNLXBENz9mKuXs 1NnNA9_KhENttpSIgXvx0IL6eMu6UZC5w 1CuR0PK8H3dsCW85pYro1YuXo2C6JRs_H 1Tms4wDPxPZpEPY44fcXxRmI-GWE1rm_2)
for i in "${!ids[@]}"; do
  n=$((i+1))
  gdown -q "https://drive.google.com/uc?id=${ids[$i]}" -O "raw/clip$n.mov"
  ffmpeg -v error -y -i "raw/clip$n.mov" -map 0:v:0 -vf "scale=1080:1920,fps=30" -c:v libx264 -crf 18 -preset veryfast -g 15 -an "assets/footage/clip$n.mp4"
done
rm -rf raw
