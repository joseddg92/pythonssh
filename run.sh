docker stop pythonssh 
docker rm pythonssh
docker run -d \
  --name pythonssh \
  -p 2211:22 \
  -v /root/base-node/node/data/geth.ipc:/root/base-node/node/data/geth.ipc \
  -v /root/test-bsc-node/node/geth.ipc:/root/test-bsc-node/node/geth.ipc \
  -v /root/bsc-node/node/geth.ipc:/root/bsc-node/node/geth.ipc \
  --ipc=host \
  python-ssh
