(use-package auto-complete
  :config (progn
            (add-hook 'haskell-mode-hook 'auto-complete-mode)
            (setq ac-auto-start 2)
            (setq ac-sources '(
                               ac-source-words-in-same-mode-buffers
                               ac-source-dictionary
                               )
            ))
)
