export MLSDK=/Users/k/MagicLeap/mlsdk/v0.19.0
export TARGET_PLATFORM=android
export TARGET_ARCH=arm64
export SKIP_DOWNLOAD=true

export CC="$MLSDK/tools/toolchains/bin/aarch64-linux-android-clang"
export CXX="$MLSDK/tools/toolchains/bin/aarch64-linux-android-clang++"

export LINK="$MLSDK/tools/toolchains/bin/aarch64-linux-android-clang++"
export AR="$MLSDK/tools/toolchains/bin/aarch64-linux-android-ar"

EXTRA_FLAGS="-I$MLSDK/lumin/stl/libc++/include -I$MLSDK/lumin/usr/include -fPIC"
export CFLAGS="$CFLAGS $EXTRA_FLAGS"
export CXXFLAGS="$CXXFLAGS $EXTRA_FLAGS"

export LDFLAGS='-v --sysroot='"$MLSDK"'/lumin -shared -pthread -rdynamic -fPIE -fPIC -L'"$MLSDK"'/lumin/stl/libc++/lib -L'"$MLSDK"'/lumin/usr/lib -L'"$MLSDK"'/lib/lumin'

export npm_config_arch=arm64

# npm i --no-optional
npm i --verbose --no-optional --devdir="$(pwd)/.node-gyp" --arch=arm64 --target_arch=arm64
# ./node_modules/.bin/ncmake rebuild

exit

pushd build
/Users/k/MagicLeap/mlsdk/v0.19.0/tools/toolchains/bin/aarch64-linux-android-clang++ -shared -pthread -rdynamic -pic -pie --sysroot=/Users/k/MagicLeap/mlsdk/v0.19.0/lumin -L/Users/k/MagicLeap/mlsdk/v0.19.0/lumin/stl/libc++/lib -L/Users/k/MagicLeap/mlsdk/v0.19.0/lumin/usr/lib -L/Users/k/MagicLeap/mlsdk/v0.19.0/lib/lumin -Wl,-soname=webrtc.node -o Release/webrtc.node -Wl,--start-group \
\
Release/obj.target/webrtc/src/binding.o Release/obj.target/webrtc/src/create-answer-observer.o Release/obj.target/webrtc/src/create-offer-observer.o Release/obj.target/webrtc/src/datachannel.o Release/obj.target/webrtc/src/peerconnection.o Release/obj.target/webrtc/src/peerconnectionfactory.o Release/obj.target/webrtc/src/rtcstatsreport.o Release/obj.target/webrtc/src/rtcstatsresponse.o Release/obj.target/webrtc/src/set-local-description-observer.o Release/obj.target/webrtc/src/set-remote-description-observer.o Release/obj.target/webrtc/src/stats-observer.o \
\
-Wl,--end-group
popd
