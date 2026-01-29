# 1. Use the official MeTube image
FROM ghcr.io/alexta69/metube:latest

# 2. Copy your local cookies.txt into the container at /app/cookies.txt
COPY cookies.txt /app/cookies.txt

# 3. (Optional) Set the environment variable automatically so you don't have to do it in Railway
ENV YTDL_OPTIONS='{"cookiefile":"/app/cookies.txt"}'
