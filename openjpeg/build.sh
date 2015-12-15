#!/bin/bash

cmake -D CMAKE_INSTALL_PREFIX=$PREFIX \
-D TIFF_LIBRARY=$PREFIX/lib/libtiff.so \
-D TIFF_INCLUDE_DIR=$PREFIX/include \
-D PNG_LIBRARY_RELEASE=$PREFIX/lib/libpng.so \
-D PNG_PNG_INCLUDE_DIR=$PREFIX/include \
-D ZLIB_LIBRARY=$PREFIX/lib/libz.so \
-D ZLIB_INCLUDE_DIR=$PREFIX/include \
.

make
make install

