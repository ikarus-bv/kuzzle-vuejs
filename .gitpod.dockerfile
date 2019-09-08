FROM gitpod/workspace-full

RUN sudo apt-get update \
 && sudo apt-get install -y \
    wget curl node npm \
 && sudo rm -rf /var/lib/apt/lists/*