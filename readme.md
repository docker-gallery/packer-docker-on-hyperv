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

After build, a new folder ./output-hyperv-iso will be created with your VM. Add this VM to your hyper-v and enjoy!

# Environment details and default values:
OS: Ubuntu Server 17.10 amd64
VM Name: ubuntu-template
hostname: ubuntu-template
Memory: 2048
Disk: 21440
SSH UserName: packer
SSH Password: packer

Tools:
- curl
- wget
- htop
- ctop
- mc
- nano
- net-tools
- docker-ce


