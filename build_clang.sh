export PATH="/lib/llvm-20/bin:$PATH"

chmod 777 clang-wrapper.sh

make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)

mv -f config.mak.bak config.mak

make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)