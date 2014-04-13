(use-package js2-mode
  :config (progn
            ;;(add-to-list 'auto-mode-alist (cons (rx ".js" eos) 'js2-mode))
            (add-hook 'js-mode-hook 'js2-minor-mode)
            (setq js2-missing-semi-one-line-override t)
            (setq-default js2-basic-offset 2) ; 2 spaces for indentation (if you prefer 2 spaces instead of default 4 spaces for tab)

            ;; add from jslint global variable declarations to js2-mode globals list
            ;; modified from one in http://www.emacswiki.org/emacs/Js2Mode
            (defun my-add-jslint-declarations ()
              (when (> (buffer-size) 0)
                (let ((btext (replace-regexp-in-string
                              (rx ":" (* " ") "true") " "
                              (replace-regexp-in-string
                               (rx (+ (char "\n\t\r "))) " "
                               ;; only scans first 1000 characters
                               (save-restriction (widen) (buffer-substring-no-properties (point-min) (min (1+ 1000) (point-max)))) t t))))
                  (mapc (apply-partially 'add-to-list 'js2-additional-externs)
                        (split-string
                         (if (string-match (rx "/*" (* " ") "global" (* " ") (group (*? nonl)) (* " ") "*/") btext)
                             (match-string-no-properties 1 btext) "")
                         (rx (* " ") "," (* " ")) t))
                  )))
            (add-hook 'js2-post-parse-callbacks 'my-add-jslint-declarations))
)
