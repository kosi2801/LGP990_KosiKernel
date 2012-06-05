zram-objs	:=	zram_drv.o zram_sysfs.o xvmalloc.o
zcache-objs	:=	zcache_drv.o xvmalloc.o

ifndef CONFIG_ZRAM_OLD_COMPRESSION
zram-objs   += csnappy_compress.o csnappy_decompress.o
endif

obj-$(CONFIG_ZRAM)	+=	zram.o
obj-$(CONFIG_ZCACHE)	+=	zcache.o
obj-$(CONFIG_XVMALLOC)	+=	xvmalloc.o


