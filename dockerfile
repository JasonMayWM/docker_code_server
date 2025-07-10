FROM lscr.io/linuxserver/code-server:latest

# Install Python and Pip
USER root
RUN apt-get update \
    && apt-get install -y python3 python3-pip python3-venv \
    && ln -s /usr/bin/python3 /usr/bin/python \
    && ln -s /usr/bin/pip3 /usr/bin/pip

# Switch back to normal user if needed
USER abc
