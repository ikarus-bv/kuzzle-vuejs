FROM gitpod/workspace-full

RUN sudo apt-get update && sudo apt-get install -y wget curl nodejs npm && sudo rm -rf /var/lib/apt/lists/*

RUN sudo sysctl -w vm.max_map_count=262144 && sudo echo "vm.max_map_count=262144" >> /etc/sysctl.conf

RUN mkdir vue-kuzzle && cd vue-kuzzle && mkdir kuzzle && cd kuzzle && bash -c "$(curl https://get.kuzzle.io)"
