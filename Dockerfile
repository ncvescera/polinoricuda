FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN apt update && apt install -y nvidia-cuda-toolkit
#RUN apt update && apt install -y build-essential && wget https://developer.download.nvidia.com/compute/cuda/12.1.0/local_installers/cuda_12.1.0_530.30.02_linux.run
#RUN bash cuda_12.1.0_530.30.02_linux.run || (cat /var/log/cuda-installer.log && exit 1)
#RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb && \
#    dpkg -i cuda-keyring_1.0-1_all.deb && apt update && apt install -y cuda-12-1
#RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb && \
#    dpkg -i cuda-keyring_1.1-1_all.deb && apt update && apt install -y cuda-toolkit-12-1

RUN echo "export PATH=\"$PATH:/usr/local/cuda-12.1/bin\" " >> /etc/profile.d/cudatoolkit.sh && \
    echo "exec /bin/bash" >> /etc/profile
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
