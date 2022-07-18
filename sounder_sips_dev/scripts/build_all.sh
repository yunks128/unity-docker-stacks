#!/bin/sh

# Install custom version of GCC
$SCRIPTS_PATH/gcc-8.2.0.sh

# Install zlib library
# https://zlib.net/

$SCRIPTS_PATH/zlib-1.2.11.sh

# Install libjpeg 
# https://ijg.org/

$SCRIPTS_PATH/jpeg-9b.sh

# Install szip library
# https://support.hdfgroup.org/ftp/lib-external/szip/

$SCRIPTS_PATH/szip-2.1.1.sh
 
# Install HDF4 library
# https://support.hdfgroup.org/ftp/HDF/releases/HDF4.2.13/src/

$SCRIPTS_PATH/hdf4-4.2.13.sh

# Install HDF5 library
# https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8/hdf5-1.8.16/src/

# Two different versions linked to in SPSS scripts
$SCRIPTS_PATH/hdf5-1.8.16.sh
$SCRIPTS_PATH/hdf5-1.8.19.sh

# Install HDFEOS2 library
# https://wiki.earthdata.nasa.gov/display/DAS/Toolkit+Downloads+with+HDFEOS+v3.0
# https://hdfeos.org/software/hdfeos.php

$SCRIPTS_PATH/hdfeos2.20v1.00.sh

# Install HDFEOS5 library
# https://wiki.earthdata.nasa.gov/display/DAS/Toolkit+Downloads

$SCRIPTS_PATH/hdfeos5.1.16.sh

# Install netcdf libraries
# https://github.com/Unidata/netcdf-c/releases
# https://github.com/Unidata/netcdf-fortran/eleases
# https://github.com/Unidata/netcdf-cxx4/releases

$SCRIPTS_PATH/netcdf-c-4.7.4.sh
$SCRIPTS_PATH/netcdf-fortran-4.4.5.sh
$SCRIPTS_PATH/netcdf-cxx4-4.3.1.sh

# Install SDPTK5.2.20v1.01 library
# All of the above are dependencies of SDPTK5.2.20v1.01
# https://wiki.earthdata.nasa.gov/display/DAS/Toolkit+Downloads

$SCRIPTS_PATH/sdptk5.2.20v1.01.sh

# Install cxxtest
# This simply has the package expanded into the destination directory
# https://sourceforge.net/projects/cxxtest/files/cxxtest/

$SCRIPTS_PATH/cxxtest-4.4.sh

# Install xerces library
# https://archive.apache.org/dist/xerces/c/3/sources/

$SCRIPTS_PATH/xerces-3.1.2.sh

# Install boost libraries
# https://www.boost.org/users/history/version_1_58_0.html

$SCRIPTS_PATH/boost-1.58.sh

# Install TinyXML library
# http://www.grinninglizard.com/tinyxml/
# https://sourceforge.net/projects/tinyxml/files/tinyxml/2.6.2/

$SCRIPTS_PATH/tinyxml-2.6.2.sh

# Install Coda library
# https://github.com/stcorp/coda/releases

$SCRIPTS_PATH/coda-2.21.sh

# Install grib_api
# https://github.com/weathersource/grib_api
# https://src.fedoraproject.org/lookaside/pkgs/grib_api/grib_api-1.9.18.tar.gz/94c03e18f4e1e166048057929feb0d1a/

$SCRIPTS_PATH/grib_api-1.9.18.sh

# Install JAsPer Project
# https://www.ece.uvic.ca/~frodo/jasper/#doc 

$SCRIPTS_PATH/jasper-1.900.1.sh

# Install g2clib
# https://github.com/weathersource/g2clib/tags

$SCRIPTS_PATH/g2clib-1.4.0.sh

# Install bufrlib
# https://github.com/NOAA-EMC/NCEPLIBS-bufr
# https://github.com/JCSDA-internal/bufrlib/releases

$SCRIPTS_PATH/bufrlib-11.3.0.sh

# Install LAPACK
# http://www.netlib.org/lapack/
# https://src.fedoraproject.org/lookaside/extras/lapack/lapack-3.5.0.tgz/e7ba742120bd75339ac4c6fbdd8bce92/

$SCRIPTS_PATH/lapack-3.5.0.sh

# Install Blitz
# https://github.com/blitzpp/blitz
# https://src.fedoraproject.org/lookaside/pkgs/blitz/blitz-1.0.1.tar.gz/sha512/e217e016a651cc1b0fa5e625663a8ac8f96b1abbe03db92246b967f79b2285ee974e9090deecad05c2c559a30dbddfcc86dca6eb373cc47346810f35cffba265/

$SCRIPTS_PATH/blitz-1.0.1.sh

# Install libtiff
# http://www.simplesystems.org/libtiff/
# http://download.osgeo.org/libtiff/

$SCRIPTS_PATH/tiff-4.0.6.sh

# Install PROJ.4
# https://download.osgeo.org/proj/proj-4.8.0.tar.gz

$SCRIPTS_PATH/proj-4.8.0.sh

# Install libgeotiff
# https://github.com/OSGeo/libgeotiff 
# https://download.osgeo.org/geotiff/libgeotiff/

$SCRIPTS_PATH/libgeotiff-1.4.0.sh
