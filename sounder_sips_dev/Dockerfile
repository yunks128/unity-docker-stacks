# Ubuntu 20.04 (focal)
# Should be same as jupyter/docker-stacks/base-notebook
ARG ROOT_CONTAINER=ubuntu:focal

FROM $ROOT_CONTAINER AS builder

ENV BUILD_PATH /build

WORKDIR $BUILD_PATH

ENV SOURCES_PATH=$BUILD_PATH/sources
ENV SCRIPTS_PATH=$BUILD_PATH/scripts
ENV INSTALL_PREFIX=/opt/packages
ENV GCC_PATH=/opt/gcc/gcc-8.2.0
ENV NUM_COMPILE_JOBS=4

# Switch to root user for build
USER root

# Install development tools, system dependencies
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
      # Build tools
      build-essential file bison flex cmake python2 unzip less \
      # libturbojpeg0-dev is used by hdf4 library instead of the installed jpeg-9b version
      # Even though boost is installed into /opt/packages, some of the SIPS PGEs use a system wide version
      libturbojpeg0-dev libboost-dev python3-netcdf4 \
      # For use in GCC compile
      libgmp-dev libmpfi-dev libmpc-dev \
      # Needed by HDF4 library
      # Needed by HDFEOS2 library
      ksh \
      # Needed by netcdf libraries
      libcurl4-openssl-dev \
      # Needed by SDPTK library
      csh \
      # Needed by g2clib      
      libpng-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy files
COPY sources $SOURCES_PATH
COPY scripts $SCRIPTS_PATH

# Install all custom packages
RUN $SCRIPTS_PATH/build_all.sh

# ----------- Second Stage --------------
# Similar to jupyter/docker-stacks/minimal-notebook but with custom SIPS environment copied over

FROM jupyter/base-notebook

ARG PACKAGES_DIR=/opt/packages
ARG GCC_PATH=/opt/gcc/gcc-8.2.0

LABEL maintainer="Unity ADS"

USER root

# Fix: https://github.com/hadolint/hadolint/wiki/DL4006
# Fix: https://github.com/koalaman/shellcheck/wiki/SC3014
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Copy over packages built in first stage
COPY --from=builder $GCC_PATH $GCC_PATH
COPY --from=builder $PACKAGES_DIR $PACKAGES_DIR

# Update leap seconds file and UTC file with versions that facilitate development without the
# need for constant updates.
COPY ephemeris/leapsec.dat /opt/packages/sdptk5.2.20v1.01/TOOLKIT/database/common/TD/leapsec.dat
COPY ephemeris/utcpole.dat /opt/packages/sdptk5.2.20v1.01/TOOLKIT/database/common/CSC/utcpole.dat

# Install tools and dependencies
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update --yes && \
    apt-get install --yes --no-install-recommends \
      # Base utilities
      git git-lfs file wget less tzdata unzip \
      vim-tiny nano-tiny \
      openssh-client \
      # Build tools
      build-essential bison flex cmake \
      # Inkscape is installed to be able to convert SVG files
      inkscape \
      # nbconvert dependencies
      # https://nbconvert.readthedocs.io/en/latest/install.html#installing-tex
      texlive-xetex texlive-fonts-recommended texlive-plain-generic \
      # libturbojpeg0-dev is used by hdf4 library instead of the installed jpeg-9b version
      # Even though boost is installed into /opt/packages, some of the SIPS PGEs use a system wide version
      libturbojpeg libboost-dev python3-netcdf4 \
      # For custom GCC 
      libgmpxx4ldbl libmpfi0 libmpc3 \
      # Needed by netcdf libraries
      libcurl4 \
      # Needed by SDPTK library
      csh \
      # Needed by g2clib and SPSS software, contains the static library as well
      libpng-dev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Create alternative for nano -> nano-tiny, vim -> vim-tiny
RUN update-alternatives --install /usr/bin/nano nano /bin/nano-tiny 10 && \
    update-alternatives --install /usr/bin/vim vim /bin/vim.tiny 10

# Switch back to jovyan to avoid accidental container runs as root
USER ${NB_UID}
