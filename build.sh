make install -j$(nproc)
mv -f config.mak.bak config.mak
make install -j$(nproc)

out_dir=$PWD
cd /root
zip -r -9 binutils.zip binutils
cp binutils.zip $out_dir/binutils.zip