#!/bin/sh

## platform & compile vars
export ARCH=arm

## kernel version vars
export KOSI_MAJOR_VERSION=006
#export KOSI_BUILD_TIMESTAMP=$(date +%s)

cd kernel
make clean
make kosi_defconfig
#make -j3 ARCH=arm CROSS_COMPILE=/home/kosi/src/gcc-4.7.1/vadonka-linaro-toolchains-4.x.y-8f57ec7/4.7.1/bin/arm-linux-androideabi- STAR_TMUS_REV=TMUS_10 TARGET_STAR_HWREV=TMUS_E TARGET_MODEM=ifx
make -j3 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- STAR_TMUS_REV=TMUS_10 TARGET_STAR_HWREV=TMUS_E TARGET_MODEM=ifx


if [ $? -eq 0 ] ; then
  cd ../build
  rm system/etc/init.d/*~
  zip -r -FS kosi$KOSI_MAJOR_VERSION.zip data/ kernel/ META-INF/ system/
  touch kosi$KOSI_MAJOR_VERSION.zip
fi
