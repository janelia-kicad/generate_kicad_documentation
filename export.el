(require 'org)

(eval-after-load "org"
  '(require 'ox-org nil t))

(eval-after-load "org"
  '(require 'ox-md nil t))

(eval-after-load "org"
  '(require 'ox-gfm nil t))

;; Don't ask when evaluating code blocks
(setq org-confirm-babel-evaluate nil)

(defun gkd/export-org-file (org-file)
  (message "\n\033[1;32mExporting %s\033[0m\n" org-file)
  (org-org-export-to-org (expand-file-name org-file))
  )

;; (defun gkd/org-file-command-line-argument (switch)
;;   (let ((filename (pop command-line-args-left)))
;;     (if (string-match "\\.org$" filename)
;;         (gkd/export-org-file filename)
;;       (message "%s not an org file!" filename)
;;   )))

;; (add-to-list 'command-switch-alist '("--export" . gkd/org-file-command-line-argument))

;; (let* ((dotfiles-path (expand-file-name "~/.dotfiles"))
;; 	     (org-files (directory-files dotfiles-path nil "\\.org$")))

;;   (defun gkd/tangle-org-file (org-file)
;;     (message "\n\033[1;32mUpdating %s\033[0m\n" org-file)
;;     (org-babel-tangle-file (expand-file-name org-file dotfiles-path)))

;; Tangle Systems.org first
(gkd/export-org-file "generate_supplementals.org")

;;   (dolist (org-file org-files)
;;     (unless (member org-file '("README.org" "Systems.org"))
;;       (gkd/tangle-org-file org-file))))
