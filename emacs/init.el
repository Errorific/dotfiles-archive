(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
;;  (tooltip-mode -1)
  (tool-bar-mode -1)
  (mouse-wheel-mode t)
;;  (blink-cursor-mode -1)
)

;;{{{ el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(add-to-list 'el-get-recipe-path' "~/.emacs.d/custom-recipes")

;; local sources
(setq el-get-sources
  '((:name ensime :load-path("./dist_2.10.2/elisp"))))

(setq my-packages
     (append
      '(
        el-get
        evil
        cperl-mode
        tomorrow-theme
        coffee-mode
        less-css-mode
        init-ido
        ctags
        whitespace
        haskell-mode
        ghc-mod
        sml-mode
        clojure-mode
        nREPL
        scala-mode2
        js2-mode
        js2-refactor
        lua-mode
        highlight-parentheses
        projectile
        helm
        auto-complete
        ac-nrepl
        zencoding-mode
        )
      (mapcar 'el-get-source-name el-get-sources)))

(el-get-cleanup my-packages)
(el-get 'sync my-packages)
;;}}}

(evil-mode 1)
(setq evil-default-cursor t)

(add-hook 'prog-mode-hook 'highlight-parentheses-mode)

;;{{{ Backup location changing
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-file-name-transforms `((".*" ,(concat user-emacs-directory "autosaves") t)))
(setq backup-by-copying t)
(setq create-lockfiles nil)
;;}}}
;;
(defalias 'perl-mode 'cperl-mode)

(fset 'yes-or-no-p 'y-or-n-p)            ;; enable y/n answers to yes/no

(setq-default indent-tabs-mode nil)
(setq tab-width 2)
(setq cperl-indent-level 2 ; 4 character indents
      cperl-indent-parens-as-block t ; indent parens like blocks
      cperl-indent-subs-specially nil
      cperl-continued-statement-offset 2
      cperl-continued-brace-offset 0
      cperl-close-paren-offset -2
      cperl-tabs-always-indent nil
      cperl-sub-keywords '("sub" "method" "func")
      coffee-tab-width 2
      column-number-mode t
      fill-column 80
)
(scroll-bar-mode -1)
(global-linum-mode 1)
;(load-theme 'zenburn t)
;(load-theme 'solarized-dark t)
(require 'color-theme-tomorrow)
(color-theme-tomorrow-night)

(projectile-global-mode)
(global-set-key (kbd "C-c h") 'helm-projectile)
;(global-set-key (kbd "C-c h") 'helm-mini)
(helm-mode 1)
;(setq helm-idle-delay 0.1)
;(setq helm-input-idle-delay 0.1)

;(if window-system
  (add-to-list 'default-frame-alist '(font . "Anonymous Pro-12"))
;)

;;{{{ whitespace & 80 chars
(require 'whitespace)
;; set the types of bad whitespace
(setq whitespace-style '(face empty tabs lines-tail trailing))
;; automatically clean up bad whitespace
(setq whitespace-action '(auto-cleanup))
(global-whitespace-mode t)
;;}}}

