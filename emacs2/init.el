;; init.el --- My emacs configuration
;;; Commentary:
;;; Code:
(mapc
 (lambda (mode)
   (when (fboundp mode)
     (funcall mode -1)))
 '(menu-bar-mode tool-bar-mode scroll-bar-mode))

(require 'cask "/usr/local/Cellar/cask/0.6.0/cask.el")
(cask-initialize)
(require 'pallet)

(require 's)
(require 'f)
(require 'ht)
(require 'git)
(require 'ert)
(require 'use-package)
(require 'cl-lib)

(setq default-directory (f-full (getenv "HOME")))

(defun load-local (file)
  (load (f-expand file user-emacs-directory)))

(load-local "etc/defuns")
(load-local "etc/misc")
(when (eq system-type 'darwin)
  (load-local "etc/osx"))

(load-theme 'sanityinc-tomorrow-night :no-confirm)
(setq inhibit-startup-screen t)

;;;; Packages

(load-local "etc/linum")
(load-local "etc/evil")
(load-local "etc/evil-nerd-commenter")
(load-local "etc/rainbow-delimiters")
(load-local "etc/auto-complete")
(load-local "etc/flycheck")
(load-local "etc/projectile")
;;(load-local "etc/project-explorer")
(load-local "etc/idle-highlight-mode")
(load-local "etc/flx-ido")
(load-local "etc/js2-mode")
(load-local "etc/yaml-mode")
;;(load-local "etc/ghc")
(load-local "etc/haskell-mode")
;;(load-local "etc/structured-haskell-mode")

(bind-key "<C-tab>" 'project-explorer-open)

(bind-key
 "C-x C-c"
 (lambda ()
   (interactive)
   (if (y-or-n-p "Quit Emacs? ")
       (save-buffers-kill-emacs))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
