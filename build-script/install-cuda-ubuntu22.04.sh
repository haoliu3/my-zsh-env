wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-ubuntu2204.pin
sudo mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/13.1.1/local_installers/cuda-repo-ubuntu2204-13-1-local_13.1.1-590.48.01-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2204-13-1-local_13.1.1-590.48.01-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2204-13-1-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda-toolkit-13-1

# If CUDA is installed in a non-standard location, set PATH so that the nvcc you
# want to use can be found (e.g., export PATH=/usr/local/cuda-12.8/bin:$PATH).
