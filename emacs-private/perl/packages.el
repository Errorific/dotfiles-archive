;;; packages.el --- perl Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq perl-packages
    '(
      cperl-mode
      ))

;; List of packages to exclude.
(setq perl-excluded-packages '())

;; For each package, define a function perl/init-<package-name>
;;
;; (defun perl/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
(defun perl/init-cperl-mode ()
  (use-package cperl-mode
    :init
    (progn
      (defalias 'perl-mode 'cperl-mode))
    :config
    (progn
      (add-to-list 'auto-mode-alist '("\\.tt\\'" . web-mode))
      (setq cperl-indent-level 2
            cperl-indent-parens-as-block t
            cperl-indent-subs-specially nil
            cperl-continued-statement-offset 2
            cperl-continued-brace-offset 0
            cperl-close-paren-offset -2
            cperl-tabs-always-indent nil
            cperl-sub-keywords '("sub" "method" "func"))
      (setq cperl-sub-regexp (regexp-opt cperl-sub-keywords)))))
