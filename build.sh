MAKE_ARGS="LLVM=1"
CFLAGS="-Os -flto=thin -Wno-error"

make install CFLAGS="$CFLAGS" CXXFLAGS="$CFLAGS" $MAKE_ARGS -j$(nproc)