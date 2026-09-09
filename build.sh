#!/bin/bash
# تحميل NDK واستخدامه
NDK_VERSION="25.1.8937393"
wget https://dl.google.com/android/repository/android-ndk-${NDK_VERSION}-linux.zip
unzip android-ndk-${NDK_VERSION}-linux.zip
export PATH=$PWD/android-ndk-${NDK_VERSION}/toolchains/llvm/prebuilt/linux-x86_64/bin:$PATH

mkdir -p libs/arm64-v8a libs/armeabi-v7a

# بناء arm64-v8a
aarch64-linux-android21-clang -shared -fPIC native-lib.cpp -o libs/arm64-v8a/libnative-lib.so

# بناء armeabi-v7a
armv7a-linux-androideabi21-clang -shared -fPIC native-lib.cpp -o libs/armeabi-v7a/libnative-lib.so
