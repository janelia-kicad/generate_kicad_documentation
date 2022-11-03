;; guix time-machine -C .channels.scm -- shell --pure -m .manifest.scm

(specifications->manifest
 '("make"
   "emacs"
   "emacs-org"
   "emacs-ox-gfm"
   "bash"
   "python"
   "python-kicad-bom"
   "imagemagick"
   "font-gnu-freefont"
   ))
