(use-package flycheck
  :init (global-flycheck-mode t)
  :config (add-hook 'flycheck-mode-hook #'flycheck-haskell-setup)
)
