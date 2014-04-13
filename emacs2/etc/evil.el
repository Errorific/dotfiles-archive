(use-package evil
  :init (evil-mode 1)
  :config (progn
            (setq evil-default-cursor t)
            (setq evil-shift-width 2)
            (dolist (m '(el-get-package-menu-mode git-status-mode grep-mode))
               (add-to-list 'evil-emacs-state-modes m)))
)