;; guix time-machine -C .channels.scm -- shell --pure -m .manifest.scm

(specifications->manifest
 '("make"
   "emacs"
   "emacs-org"
   "emacs-ox-gfm"
   "bash"
   "git"
   "python"
   "python-kicad-bom"
   "imagemagick"
   "graphicsmagick"
   "inkscape"
   "zip"
   "font-gnu-freefont"
   ))
