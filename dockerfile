FROM ubuntu:22.04

# Install code-server manually and Python
RUN apt-get update && \
    apt-get install -y curl python3 python3-pip python3-venv && \
    curl -fsSL https://code-server.dev/install.sh | sh

# Optional symlinks
RUN ln -s /usr/bin/python3 /usr/bin/python && \
    ln -s /usr/bin/pip3 /usr/bin/pip

EXPOSE 8443
