;; guix time-machine -C .channels.scm -- shell --pure -m .manifest.scm

(list (channel
        (name 'guix)
        (url "https://git.savannah.gnu.org/git/guix.git")
        (branch "master")
        (commit
          "868a1e7f320616e6a13aa23ea1ab86f7d40ddfdb")
        (introduction
          (make-channel-introduction
            "9edb3f66fd807b096b48283debdcddccfea34bad"
            (openpgp-fingerprint
              "BBB0 2DDF 2CEA F6A8 0D1D  E643 A2A0 6DF2 A33A 54FA"))))
      (channel
        (name 'guix-janelia)
        (url "https://github.com/guix-janelia/guix-janelia.git")
        (branch "main")
        (commit
          "a082913f2dcfd0aa7d1922e780880505aaf3e2d9")))
