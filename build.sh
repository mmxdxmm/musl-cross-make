make install CC="musl-gcc" CXX="musl-gcc" -j$(nproc)
mv -f config.mak.bak config.mak
make install CC="musl-gcc" CXX="musl-gcc" -j$(nproc)

out_dir=$PWD
cd /home
zip -r -9 binutils.zip binutils
cp binutils.zip $out_dir/binutils.zip