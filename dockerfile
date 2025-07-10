# For Raspberry Pi — auto resolves ARM arch
FROM lscr.io/linuxserver/code-server:latest

# Add Python and pip for Alpine base image
RUN apk add --no-cache python3 py3-pip

# Or, if using Ubuntu base:
# FROM lscr.io/linuxserver/code-server:ubuntu
# RUN apt-get update && apt-get install -y python3 python3-pip

# Optional: confirm versions at build time
RUN python3 --version && pip3 --version

