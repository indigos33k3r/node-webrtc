{
  'targets': [
    {
      'target_name': 'webrtc',
      'conditions': [
        ['OS=="linux"', {
          'sources': [
            '<!@(ls -1 src/*.cc)',
          ],
          'include_dirs': [
            '<!(node -e \'require("nan")\')',
            '<(module_root_dir)/src',
            '<(module_root_dir)/node_modules/native-rtc-deps/include',
            '<(module_root_dir)/node_modules/native-rtc-deps/include/webrtc',
          ],
          'library_dirs': [
            '<(module_root_dir)/node_modules/native-rtc-deps/lib/linux',
          ],
          'libraries': [
            '-lwebrtc',
          ],
          'defines': [
            'WEBRTC_POSIX=1',
          ],
        }],
        ['OS=="mac"', {
          'sources': [
            '<!@(ls -1 src/*.cc)',
          ],
          'include_dirs': [
            '<!(node -e \'require("nan")\')',
            '<(module_root_dir)/src',
            '<(module_root_dir)/node_modules/native-rtc-deps/include',
            '<(module_root_dir)/node_modules/native-rtc-deps/include/webrtc',
          ],
          'library_dirs': [
            '<(module_root_dir)/node_modules/native-rtc-deps/lib/macos',
          ],
          'libraries': [
            '-lwebrtc',
          ],
          'defines': [
            'WEBRTC_MAC=1',
            'WEBRTC_POSIX=1',
          ],
        }],
        ['"<!(echo $LUMIN)"=="1"', {
          'defines': ['LUMIN'],
        }],
      ],
    },
  ],
}
