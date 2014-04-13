;; line numbers
(global-linum-mode 1)

(defun nolinum ()
  (linum-mode 0)
)
(add-hook 'org-mode-hook 'nolinum)
(add-hook 'project-explorer-mode-hook 'nolinum)
(add-hook 'term-mode-hook 'nolinum)
(add-hook 'magit-mode-hook 'nolinum)
