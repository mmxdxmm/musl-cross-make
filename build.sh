make install -j$(nproc)

mv -f config.mak.bak config.mak

make install -j$(nproc)