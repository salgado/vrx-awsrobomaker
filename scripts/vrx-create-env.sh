# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#setting-up-nvidia-container-toolkit

distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
   && curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add - \
   && curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list


# install nvidia driver
sudo apt install nvidia-utils-460

# update
sudo apt-get update

sudo apt-get install -y nvidia-docker2

sudo systemctl restart docker

# install rocker
sudo apt-get install python3-rocker


#build vrx image
git clone https://github.com/Field-Robotics-Lab/dockwater.git
cd dockwater
./build.bash noetic
#./run.bash noetic:latest
rocker  --devices /dev/input/js0 --dev-helpers  --x11 --user --home --git --name noetic_runtime noetic:latest 
