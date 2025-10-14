# TARGET = i486-linux-musl
# TARGET = x86_64-linux-musl
#TARGET = arm-linux-musleabi
TARGET = aarch64-linux-musl
# TARGET = arm-linux-musleabihf
# TARGET = sh2eb-linux-muslfdpic
# ...

OUTPUT = /root/binutils
# OUTPUT = /usr/local

BINUTILS_VER = 2.33.1
GCC_VER = 15.1.0
#MUSL_VER = 1.2.5
#GMP_VER = 
#MPC_VER = 
#MPFR_VER = 
#ISL_VER = 
LINUX_VER = headers-4.19.88-1

#COMMON_CONFIG += CC="aarch64-linux-musl-gcc -static --static" CXX="aarch64-linux-musl-g++ -static --static"

COMMON_CONFIG += CFLAGS="-g0 -Os" CXXFLAGS="-g0 -Os" LDFLAGS="-s"

COMMON_CONFIG += --disable-nls
GCC_CONFIG += --disable-libquadmath --disable-decimal-float
GCC_CONFIG += --disable-libitm
GCC_CONFIG += --disable-fixed-point
GCC_CONFIG += --disable-lto

GCC_CONFIG += --enable-languages=c,c++

COMMON_CONFIG += --with-debug-prefix-map=$(CURDIR)=
