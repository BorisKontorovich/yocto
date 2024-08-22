FROM ubuntu:22.04

SHELL ["/bin/bash", "-c"]

EXPOSE 1-65535

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y chrpath diffstat g++ lz4 \
    python3-dev bzip2 cpio file gawk git make patch wget locales tar \
    zstd \
    xz-utils \
    python3 \
    patchelf

# Generate and set the en_US.UTF-8 locale
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Update locale configuration
RUN update-locale

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# RUN mkdir -p /home/$USERNAME/yocto/build/conf && \
#     mkdir -p /home/$USERNAME/yocto/source && \
#     mkdir -p /home/$USERNAME/yocto/build/tmp/sysroots-uninative


###############################################################################
ARG USERNAME=dev
ARG USER_UID=1000
ARG USER_GID=1000

# # Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
    #
    # [Optional] Add sudo support. Omit if you don't need to install software after connecting.
    # && apt-get update \
    # && apt-get install -y sudo \
    # && echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME \
    # && chmod 0440 /etc/sudoers.d/$USERNAME

USER $USERNAME
###############################################################################

RUN mkdir -p /home/$USERNAME/yocto/source
RUN mkdir -p /home/$USERNAME/yocto/custom/conf
COPY ./source /home/$USERNAME/yocto/source
COPY ./entrypoint.bash /home/$USERNAME/yocto/entrypoint.bash
# RUN chmod +x /home/$USERNAME/yocto/entrypoint.bash

WORKDIR /home/$USERNAME/yocto