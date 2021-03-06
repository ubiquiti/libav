
#!/bin/sh

set -e

DEST_FOLDER=${LOCAL_PREFIX}/libav_install

./configure \
	--prefix=${DEST_FOLDER} \
	--extra-cflags="-I${LOCAL_PREFIX}/include -I${DEST_FOLDER}/include" \
	--extra-ldflags="-L${LOCAL_PREFIX}/lib -L${DEST_FOLDER}/lib" \
	--enable-gpl \
	--enable-libx264 \

#--disable-optimizations \
#--enable-debug \


make -j32 install

