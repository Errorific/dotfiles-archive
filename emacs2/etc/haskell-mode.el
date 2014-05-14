(use-package haskell-mode
  :commands haskell-mode
  :init
  (add-to-list 'auto-mode-alist '("\\.l?hs$" . haskell-mode))
  :config
  (progn
    (add-hook 'haskell-mode-hook 'capitalized-words-mode)
    (add-hook 'haskell-mode-hook 'turn-on-haskell-doc)
    (add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
    (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
    (setq haskell-font-lock-symbols t)
    (setq haskell-tags-on-save t)
    (add-hook 'haskell-mode-hook 'auto-complete-mode)
))
