#!/bin/bash

set -e
set -x

function compile() {
    scons -j8 platform=android target=release android_arch=$1 \
    --config=force \
    progress=yes \
    verbose=no \
    deprecated=no \
    minizip=no \
    xaudio2=no \
    disable_3d=yes \
    disable_advanced_gui=yes \
    debug_symbols=no \
    module_arkit_enabled=no \
    module_assimp_enabled=no \
    module_bmp_enabled=no \
    module_bullet_enabled=no \
    module_camera_enabled=no \
    module_csg_enabled=no \
    module_cvtt_enabled=no \
    module_dds_enabled=no \
    module_etc_enabled=no \
    module_gdnative_enabled=no \
    module_hdr_enabled=no \
    module_jpg_enabled=no \
    module_jsonrpc_enabled=no \
    module_mbedtls_enabled=no \
    module_mobile_vr_enabled=no \
    module_mono_enabled=no \
    module_opensimplex_enabled=no \
    module_opus_enabled=no \
    module_pvr_enabled=no \
    module_recast_enabled=no \
    module_regex_enabled=no \
    module_squish_enabled=no \
    module_svg_enabled=no \
    module_tga_enabled=no \
    module_theora_enabled=no \
    module_tinyexr_enabled=no \
    module_upnp_enabled=no \
    module_vhacd_enabled=no \
    module_visual_script_enabled=no \
    module_webm_enabled=no \
    module_webp_enabled=no \
    module_webrtc_enabled=no \
    module_websocket_enabled=no \
    module_xatlas_unwrap_enabled=no \
    builtin_bullet=yes \
    builtin_libtheora=no \
    builtin_libvpx=yes \
    builtin_libwebp=yes \
    builtin_mbedtls=yes \
    builtin_miniupnpc=yes \
    builtin_opus=yes \
    builtin_pcre2=no \
    builtin_pcre2_with_jit=no \
    builtin_recast=yes \
    builtin_squish=yes \
    builtin_xatlas=yes \
    builtin_zlib=yes \
    builtin_zstd=yes
}

cd /root/godot-${GODOT_VERSION}-${GODOT_RELEASE} \

compile armv7 > /dev/null
ls bin/
#compile arm64v8 > /dev/null
#compile x86 > /dev/null
#compile x86_64 > /dev/null

export ANDROID_NDK_HOME=$ANDROID_NDK_ROOT
echo $ANDROID_NDK_HOME
cd platform/android/java
./gradlew generateGodotTemplates > /dev/null
