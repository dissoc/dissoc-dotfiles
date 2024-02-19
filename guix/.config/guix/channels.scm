;; Add my personal packages to those Guix provides.

(append
 %default-channels
 (list (channel
        (name 'dissoc-guix)
        (url "https://github.com/dissoc/dissoc-guix.git")
        (branch "main")
        (introduction
         (make-channel-introduction
          "d644d7247155056b1d62977ae2cf8f989f84c11a"
          (openpgp-fingerprint
           "95D3 7A96 EC54 79CE 6082  5831 81FF 5EC7 66ED 8C39"))))
       (channel
        (name 'dissoc-nonguix)
        (url "https://github.com/dissoc/dissoc-nonguix.git")
        (branch "main")
        (introduction
         (make-channel-introduction
          "084a499cab2a827e9127c33e9ec24f1d14180c93"
          (openpgp-fingerprint
           "95D3 7A96 EC54 79CE 6082  5831 81FF 5EC7 66ED 8C39"))))
       (channel
        (name 'dissoc-guix-private)
        (url "https://github.com/dissoc/dissoc-guix-private.git")
        (branch "main")
        (introduction
         (make-channel-introduction
          "572f3b4f9bcb19a4c917d459506fcb60e760018e"
          (openpgp-fingerprint
           "95D3 7A96 EC54 79CE 6082  5831 81FF 5EC7 66ED 8C39"))))
       (channel
        (name 'nonguix)
        (url "https://gitlab.com/nonguix/nonguix")
        (introduction
         (make-channel-introduction
          "897c1a470da759236cc11798f4e0a5f7d4d59fbc"
          (openpgp-fingerprint
           "2A39 3FFF 68F4 EF7A 3D29  12AF 6F51 20A0 22FB B2D5"))))))
