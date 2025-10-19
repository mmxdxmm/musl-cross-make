export PATH="/lib/llvm-20/bin:$PATH"

set_CC="ccache clang -Os -Wno-error -Qunused-arguments -Wno-unknown-warning-option"

make install CC="$set_CC" CXX="$set_CC" HOSTCC="$set_CC" HOSTCXX="$set_CC" -j$(nproc)
mv -f config.mak.bak config.mak
make install CC="$set_CC" CXX="$set_CC" HOSTCC="$set_CC" HOSTCXX="$set_CC" -j$(nproc)

#chmod 777 clang-wrapper.sh
#make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)
#mv -f config.mak.bak config.mak
#make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)

out_dir=$PWD
cd /root
zip -r -9 binutils.zip binutils
cp binutils.zip $out_dir/binutils.zip