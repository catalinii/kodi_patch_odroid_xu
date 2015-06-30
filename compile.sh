#!/bin/bash
if [ ! -e /usr/include/android ]; then
ln -s /usr/local/include/android/ /usr/include/
fi

./bootstrap

./configure --prefix=/usr/local --disable-texturepacker --disable-avahi --enable-hybris --enable-codec=mfc --enable-alsa --disable-pulse --enable-airtunes --enable-airplay --enable-libcec --enable-debug --enable-optimizations --enable-ccache --enable-gles --disable-x11 --disable-gl --enable-non-free --disable-vdpau --disable-vaapi --disable-crystalhd --disable-openmax --disable-rsxs --disable-projectm --disable-fishbmc --disable-nfs --disable-afpclient --enable-dvdcss --enable-optical-drive --disable-libbluray --with-platform=hybris --with-cpu=cortex-a15 


#sed -i 's/\-lmedia//' Makefile

make -j5

if [ $? -eq 0 ]; then
rm -rf /usr/local/lib/kodi/ /usr/local/bin/kodi* /usr/local/share/kodi/  /usr/local/include/kodi
make install
fi
