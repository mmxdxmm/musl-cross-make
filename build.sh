MAKE_ARGS="CC=clang CXX=clang++"
CFLAGS="-Os -flto=thin -Wno-error"

make install CFLAGS="$CFLAGS" CXXFLAGS="$CFLAGS" $MAKE_ARGS -j$(nproc)