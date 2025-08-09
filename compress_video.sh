mkdir -p images/2025
ffmpeg -i images/2025/kl_tracing2025_original.mp4 \
  -vf "crop='min(iw,ih)':'min(iw,ih)',scale=512:512" \
  -c:v libx264 -crf 23 -preset slow -pix_fmt yuv420p \
  -c:a aac -b:a 128k -movflags +faststart \
  images/2025/kl_tracing2025.mp4
