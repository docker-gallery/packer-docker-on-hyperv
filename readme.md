# Packer VM Generator to create Docker environment on hyper-v

If you need a production ready docker experience, Docker for windows maybe  hidden a lot of things to make docker expecience fluid.

Step-by-step:

## Clone project
```
git clone git@github.com:docker-gallery/packer-docker-on-hyperv.git
cd ./packer-docker-on-hyperv
```

## Get required dependencies
```
curl -o ./ubuntu/ubuntu-17.10-server-amd64.iso http://mirror.ufscar.br/ubuntu-releases/17.10/ubuntu-17.10-server-amd64.iso
```

## Build your own image
```
./build.sh
```