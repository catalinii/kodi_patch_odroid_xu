
Patch Kodi to work on odroid xu + libhybris + hardware accelerated mfc

This is the patch that can be used for the kodi repository (https://github.com/xbmc/xbmc) to have it running on Odroid-XU with MFC support

The image that works with this patch is: http://oph.mdrjr.net/memeka/xu-trusty-odroid-10032014.img.xz
The patch is using an older version files from: https://github.com/Owersun/xbmc

To get it working with the latest versions of libhybris, you can just replace the following files:
https://raw.githubusercontent.com/Owersun/xbmc/Helix/xbmc/windowing/egl/EGLNativeTypeHybris.cpp and https://raw.githubusercontent.com/Owersun/xbmc/Helix/xbmc/windowing/egl/EGLNativeTypeHybris.h
to xbmc/windowing/egl directory.
