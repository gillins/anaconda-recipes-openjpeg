
cmake -G "NMake Makefiles" -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
-D TIFF_LIBRARY=%LIBRARY_PREFIX%/lib/libtiff.lib ^
-D TIFF_INCLUDE_DIR=%LIBRARY_PREFIX%/include ^
-D PNG_LIBRARY_RELEASE=%LIBRARY_PREFIX%/lib/libpng.lib ^
-D PNG_PNG_INCLUDE_DIR=%LIBRARY_PREFIX%/include ^
-D ZLIB_LIBRARY=%LIBRARY_PREFIX%/lib/zlib.lib ^
-D ZLIB_INCLUDE_DIR=%LIBRARY_PREFIX%/include ^
-D CMAKE_BUILD_TYPE=Release .

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
