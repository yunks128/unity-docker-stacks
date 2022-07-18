#!/bin/bash
# wget https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8/hdf5-1.8.16/src/hdf5-1.8.16.tar.gz
# update binutils on C7
# 
tar zxf $SOURCES_PATH/hdf5-1.8.16.tar.gz
cd hdf5-1.8.16

export CC="$GCC_PATH/bin/gcc"
export CXX="$GCC_PATH/bin/g++"
export CPP="$GCC_PATH/bin/g++ -E"
export CFLAGS="-m64 -fPIC -pthread -s -mcmodel=large -Wall -Wno-unused-variable -Wmissing-prototypes -Wmissing-declarations -m128bit-long-double -mlarge-data-threshold=90000000"
export LDFLAGS="-m64 -pthread -fPIC -Wl,-Map,hdf5-1.8.16.map"
export FC="$GCC_PATH/bin/gfortran"
export FFLAGS="-m64 -fPIC -pthread -s -ffixed-line-length-132 -mcmodel=large -fdec-structure -fdec -mlarge-data-threshold=90000000" 

./configure --prefix="$INSTALL_PREFIX/hdf5-1.8.16" \
--with-zlib=$INSTALL_PREFIX/zlib-1.2.11 \
--with-szlib=$INSTALL_PREFIX/szip-2.1.1 \
--enable-cxx \
--enable-fortran

make -j $NUM_COMPILE_JOBS
make install
echo
echo "$ ls -l $INSTALL_PREFIX/hdf5-1.8.16"
ls -l $INSTALL_PREFIX/hdf5-1.8.16
