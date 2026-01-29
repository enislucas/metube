# Start with the official app
FROM ghcr.io/alexta69/metube:latest

# Set the working directory
WORKDIR /app

# Copy your cookies file into the container
COPY cookies.txt /app/cookies.txt

# Tell MeTube where to find the cookies (Baked in!)
ENV YTDL_OPTIONS='{"cookiefile":"/app/cookies.txt"}'
