;; guix time-machine -C channels.scm -- shell --pure -m manifest.scm

(specifications->manifest
 '("make"
   "emacs"
   "python"
   "python-kicad-bom"
   "imagemagick"
   "font-gnu-freefont"
   ))
