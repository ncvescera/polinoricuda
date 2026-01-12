FROM quay.io/uninuvola/base:main

# DO NOT EDIT USER VALUE
USER root

## -- ADD YOUR CODE HERE !! -- ##
RUN wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb && \
    dpkg -i cuda-keyring_1.1-1_all.deb && apt update && apt install -y cuda-toolkit-12-1

RUN echo "export PATH=\"$PATH:/usr/local/cuda-12.1/bin\" " >> /etc/profile.d/cudatoolkit.sh && \
    echo "exec /bin/bash" >> /etc/profile
## --------------------------- ##

# DO NOT EDIT USER VALUE
USER jovyan
