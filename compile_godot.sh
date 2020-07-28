#!/bin/bash

set -e
set -x

cd /root/godot-${GODOT_VERSION}-${GODOT_RELEASE}
scons -j8 platform=server tools=no target=release bits=64 \
    --config=force \
    progress=yes \
    verbose=yes \
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
    module_xatlas_unwrap_enabled=no #\
    
    #builtin_bullet=yes \
    #builtin_libtheora=no \
    #builtin_libvpx=no \
    #builtin_libwebp=no \
    #builtin_mbedtls=no \
    #builtin_miniupnpc=no \
    #builtin_opus=no \
    #builtin_pcre2=no \
    #builtin_pcre2_with_jit=no \
    #builtin_recast=no \
    #builtin_squish=no \
    #builtin_xatlas=no \
    #builtin_zlib=no \
    #builtin_zstd=yes
