export PATH="/lib/llvm-20/bin:$PATH"

make install CC="clang -Qunused-arguments -Wno-unknown-warning-option" CXX="clang++ -Qunused-arguments -Wno-unknown-warning-option" -j$(nproc)
mv -f config.mak.bak config.mak
make install CC="clang -Qunused-arguments -Wno-unknown-warning-option" CXX="clang++ -Qunused-arguments -Wno-unknown-warning-option" -j$(nproc)

#chmod 777 clang-wrapper.sh
#make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)
#mv -f config.mak.bak config.mak
#make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)

out_dir=$PWD
cd /root
zip -r -9 binutils.zip binutils
cp binutils.zip $out_dir/binutils.zip