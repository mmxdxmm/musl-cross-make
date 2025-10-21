rm -rf out

cp -f config.mak.1 config.mak
make install -j$(nproc)
cp -f config.mak.2 config.mak
make install -j$(nproc)

out_dir=$PWD
cd /root
zip -r -9 binutils.zip binutils
cp binutils.zip $out_dir/binutils.zip