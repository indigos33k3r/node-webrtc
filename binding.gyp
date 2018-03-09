{
  'targets': [
    {
      'target_name': 'webrtc',
      'sources': [
        # 'main.cpp',
        '<!@(ls -1 src/*.cc)',
      ],
      'include_dirs': [
        '<!(node -e \'require("nan")\')',
        '<(module_root_dir)/src',
        '/Users/k/Documents/GitHub/node-native-rtc-deps/include',
        '/Users/k/Documents/GitHub/node-native-rtc-deps/include/webrtc',
      ],
      'library_dirs': [
        # '<(module_root_dir)/node_modules/native-canvas-deps/lib/linux',
        '/Users/k/Documents/GitHub/node-native-rtc-deps/lib/macos',
      ],
      'libraries': [
        '-lwebrtc',
      ],
      'defines': [
        'WEBRTC_MAC=1',
        'WEBRTC_POSIX=1',
      ],
      'ldflags': [
        # '-L/usr/local/opt/openssl/lib',
      ],
    },
  ],
}
