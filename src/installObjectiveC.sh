#!/usr/bin/env bash
# https://github.com/plaurent/gnustep-build/blob/master/ubuntu-19.10-clang-9.0-runtime-2.0/GNUstep-buildon-ubuntu1910.sh
set -euo pipefail

mkdir /tmp/objectiveC
cd /tmp/objectiveC

export CC=clang

curl -LO http://ftpmain.gnustep.org/pub/gnustep/core/gnustep-make-2.7.0.tar.gz
tar -xzf gnustep-make-*.tar.gz
rm gnustep-make-*.tar.gz
pushd gnustep-make-*
./configure --disable-importing-config-file --enable-native-objc-exceptions --enable-objc-arc --enable-install-ld-so-conf --with-library-combo=ng-gnu-gnu && make install
popd

curl -LO https://github.com/gnustep/libobjc2/archive/v2.0.tar.gz
tar -xzf v*.tar.gz
rm v*.tar.gz
pushd libobjc2-*
mkdir Build
cd Build/
cmake -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ ..
make install
popd

# Install gnustep-make again, https://blog.metaobject.com/2019/01/objective-smalltalk-on-linux-via.html, some warning about conflicting error mechanisms between gnustep-base and -make
pushd gnustep-make-*
make clean && ./configure --disable-importing-config-file --enable-native-objc-exceptions --enable-objc-arc --enable-install-ld-so-conf --with-library-combo=ng-gnu-gnu && make install
popd


curl -LO http://ftpmain.gnustep.org/pub/gnustep/core/gnustep-base-1.26.0.tar.gz
tar -xzf gnustep-base-*.tar.gz
rm gnustep-base-*.tar.gz
pushd gnustep-base-*
./configure --disable-iconv --disable-xml --disable-tls
make install
popd

# Need something newer than 0.1.1 because of https://github.com/gnustep/libs-corebase/issues/14
curl -L https://github.com/gnustep/libs-corebase/archive/e606d29699d6f8b72f9ae050db60ce3f5ecb4806.tar.gz -o corebase-e606d29699d6f8b72f9ae050db60ce3f5ecb4806.tar.gz
tar -xzf corebase-*.tar.gz
rm corebase-*.tar.gz
pushd libs-corebase-*
./configure
make
make install
popd

ldconfig

rm -r /tmp/objectiveC
