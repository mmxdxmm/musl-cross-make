export PATH="/lib/llvm-20/bin:$PATH"

set_CC="ccache clang -Os -ffunction-sections -fdata-sections -Wno-error -D_GNU_SOURCE -Dfputc_unlocked=fputc -Dfgetc_unlocked=fgetc -Dfwrite_unlocked=fwrite -Dfread_unlocked=fread -Dfputs_unlocked=fputs -Dfgets_unlocked=fgets"
set_CXX="ccache clang++ -Os -ffunction-sections -fdata-sections -Wno-error -D_GNU_SOURCE -Dfputc_unlocked=fputc -Dfgetc_unlocked=fgetc -Dfwrite_unlocked=fwrite -Dfread_unlocked=fread -Dfputs_unlocked=fputs -Dfgets_unlocked=fgets"
#set_LD="ld.lld --strip-debug --gc-sections"
#set_other="AR=llvm-ar NM=llvm-nm STRIP=llvm-strip OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump HOSTAR=llvm-ar"
set_LDFLAGS="-Wl,--gc-sections"

rm -rf out

cp -f config.mak.1 config.mak
make install CC="$set_CC" CXX="$set_CXX" HOSTCC="$set_CC" HOSTCXX="$set_CXX" $set_LDFLAGS -j$(nproc)
cp -f config.mak.2 config.mak
make install CC="$set_CC" CXX="$set_CXX" HOSTCC="$set_CC" HOSTCXX="$set_CXX" $set_LDFLAGS -j$(nproc)

#chmod 777 clang-wrapper.sh
#make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)
#mv -f config.mak.bak config.mak
#make install CC="$PWD/clang-wrapper.sh" CXX="$PWD/clang-wrapper.sh" -j$(nproc)

out_dir=$PWD
cd /root
zip -r -9 binutils.zip binutils
cp binutils.zip $out_dir/binutils.zip