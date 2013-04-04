(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (tooltip-mode -1)
  (mouse-wheel-mode t)
  (blink-cursor-mode -1))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

;; local sources
(setq el-get-sources
  '((:name ensime :load-path("./dist_2.10.0/elisp"))))

(setq my-packages
     (append
      '(el-get cperl-mode)
      (mapcar 'el-get-source-name el-get-sources)))

(el-get-cleanup my-packages)
(el-get 'sync my-packages)

(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
