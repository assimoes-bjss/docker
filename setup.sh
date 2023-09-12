#!/bin/bash

urls=(
    "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-1.6.9-3.1.el7.x86_64.rpm"
    "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-buildx-plugin-0.11.2-1.el7.x86_64.rpm"
    "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-24.0.6-1.el7.x86_64.rpm"
    "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-24.0.6-1.el7.x86_64.rpm"
    "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-rootless-extras-24.0.6-1.el7.x86_64.rpm"
    "https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-compose-plugin-2.6.0-3.el7.x86_64.rpm"
)

download_dir="/tmp/docker_setup_files"

mkdir -p $download_dir

for url in "${urls[@]}"; do
  wget -P "$download_dir" "$url"
done

sudo yum install  ./"$download_dir"/*.rpm -y


echo "install complete"
