# Use the Ubuntu variant, which supports ARM
FROM lscr.io/linuxserver/code-server:ubuntu

# Now use apt, not apk
RUN apt-get update && apt-get install -y python3 python3-pip

# Optional: clean up to reduce image size
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Verify versions at build time
RUN python3 --version && pip3 --version


