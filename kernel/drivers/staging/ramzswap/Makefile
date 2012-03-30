ramzswap-objs	:=	ramzswap_drv.o xvmalloc.o 

ifndef CONFIG_RAMZSWAP_OLD_COMPRESSION
ramzswap-objs	+= csnappy_compress.o csnappy_decompress.o
endif

obj-$(CONFIG_RAMZSWAP)	+=	ramzswap.o
