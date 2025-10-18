set_CC="ccache gcc -Os -Wno-error"
set_CXX="ccache g++ -Os -Wno-error"
set_LD="ld --strip-debug"

make install LD="$set_LD" HOSTLD="$set_LD" CC="$set_CC" CXX="$set_CXX" HOSTCC="$set_CC" HOSTCXX="$set_CXX" -j$(nproc)
mv -f config.mak.bak config.mak
make install LD="$set_LD" HOSTLD="$set_LD" CC="$set_CC" CXX="$set_CXX" HOSTCC="$set_CC" HOSTCXX="$set_CXX" -j$(nproc)

out_dir=$PWD
cd /root
zip -r -9 binutils.zip binutils
cp binutils.zip $out_dir/binutils.zip