MAKE_ARGS="ARCH=arm64 SUBARCH=arm64 LLVM=1 CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- CROSS_COMPILE_COMPAT=arm-linux-gnueabi- CLANG_TRIPLE=aarch64-linux-gnu-"
CFLAGS="-Os -flto=thin -Wno-error"

make install CFLAGS="$CFLAGS" CXXFLAGS="$CFLAGS" $MAKE_ARGS -j$(nproc)