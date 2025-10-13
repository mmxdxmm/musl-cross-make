export PATH="/lib/llvm-20/bin:$PATH"

make install CC=clang CXX=clang++ -j$(nproc)

mv -f config.mak.bak config.mak
make install CC=clang CXX=clang++ -j$(nproc)