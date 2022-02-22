(require 'org)

;; Don't ask when evaluating code blocks
(setq org-confirm-babel-evaluate nil)


(defun pjp/export-org-file (org-file)
  (message "\n\033[1;32mExporting %s\033[0m\n" org-file)
  ;;(org-babel-export-file (expand-file-name org-file dotfiles-path))
  )

(defun pjp/org-file-command-line-argument (switch)
  (let ((filename (pop command-line-args-left)))
    (if (string-match "\\.org$" filename)
        (pjp/export-org-file filename)
      (message "%s not an org file!" filename)
  )))

(add-to-list 'command-switch-alist '("--export" . pjp/org-file-command-line-argument))

;; (let* ((dotfiles-path (expand-file-name "~/.dotfiles"))
;; 	     (org-files (directory-files dotfiles-path nil "\\.org$")))

;;   (defun pjp/tangle-org-file (org-file)
;;     (message "\n\033[1;32mUpdating %s\033[0m\n" org-file)
;;     (org-babel-tangle-file (expand-file-name org-file dotfiles-path)))

;;   ;; Tangle Systems.org first
;;   (pjp/tangle-org-file "Systems.org")

;;   (dolist (org-file org-files)
;;     (unless (member org-file '("README.org" "Systems.org"))
;;       (pjp/tangle-org-file org-file))))
