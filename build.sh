#!/bin/sh

## platform & compile vars
export ARCH=arm

## kernel version vars
export KOSI_MAJOR_VERSION=005
#export KOSI_BUILD_TIMESTAMP=$(date +%s)

cd kernel
make clean
make kosi_defconfig
make -j3 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- STAR_TMUS_REV=TMUS_10 TARGET_STAR_HWREV=TMUS_E TARGET_MODEM=ifx

if [ $? -eq 0 ] ; then
  cd ../build
  rm system/etc/init.d/*~
  zip -r -FS kosi$KOSI_MAJOR_VERSION.zip data/ kernel/ META-INF/ system/
fi
