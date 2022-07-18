#!/bin/bash
tar zxf $SOURCES_PATH/gcc-8.2.0.tar.gz
cd gcc-8.2.0
# See: https://stackoverflow.com/questions/62435946/building-gcc-8-3-makefile955-all-error-2
patch -p1 <$SOURCES_PATH/GCCcore-9.2.0-fix-glibc-2.31-libsanitizer.patch
./configure \
    --enable-languages=c,c++,fortran \
    --disable-multilib \
    --prefix=$GCC_PATH
make -j $NUM_COMPILE_JOBS
make install
echo
echo "$ ls -l $GCC_PATH"
ls -l $GCC_PATH
