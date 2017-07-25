;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     csv
     python
     php
     sql
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; evil
     evil-cleverparens
     vim-empty-lines
     ivy

     (auto-completion :variables
                      )
     emacs-lisp
     git
     version-control
     markdown
     (org :variables org-enable-org-journal-support t)
     osx
     shell
     (syntax-checking :variables spell-checking-enable-by-default nil)
     spell-checking
     themes-megapack
     gtags
     ; Langs
     ;; (haskell :variables haskell-enable-shm-support t)
     (haskell :variables haskell-enable-hindent-style "chris-done")
     html
     javascript
     react
     typescript
     perl
     scala
     yaml
     ;; Windows
     )
   ;; List of additional packages that will be installed wihout being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(cperl-mode editorconfig groovy-mode)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(helm-gitignore)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/user-init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; Need to find whats been installed by cabin
  (add-to-list 'exec-path "~/.cabin/bin/")
  (add-to-list 'exec-path "/Users/cmckay/.nvm/versions/node/v7.3.0/bin/")
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(sanityinc-tomorrow-eighties
                         sanityinc-tomorrow-night
                         solarized-light
                         solarized-dark
                         leuven
                         monokai
                         zenburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("Source Code Pro"
   dotspacemacs-default-font '("Knack Nerd Font"
                               :size 11
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; folding method, default to 'evil
   dotspacemacs-folding-method 'origami
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-which-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil)
  (setq js2-basic-offset 2
   js-indent-level 2)
  )

(defun dotspacemacs/user-config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

  (spacemacs/toggle-evil-cleverparens-on)
  ;; (setq-default
   ;; flycheck-scalastyle-jar "/usr/local/Cellar/scalastyle/0.7.0/libexec/scalastyle_2.11-0.7.0-batch.jar"
   ;; ;; flycheck-scalastylerc "/usr/local/etc/scalastyle_config.xml"
  ;; )
  (setq org-journal-dir "~/journal/")
  (setq org-journal-file-format "%Y-%m-%d")
  (setq typescript-indent-level 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-indent-style 2)
  (editorconfig-mode 1)
  (add-to-list 'auto-mode-alist '("\\.t\\'" . cperl-mode))
  (global-set-key (kbd "<home>") 'move-beginning-of-line)
  (global-set-key (kbd "<end>") 'move-end-of-line)
  (setq powerline-default-separator 'utf-8)
  (setq company-idle-delay 1)
  )


;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (csv-mode winum solarized-theme madhat2r-theme fuzzy origami yapfify pyvenv pytest pyenv-mode py-isort pip-requirements live-py-mode hy-mode cython-mode company-anaconda anaconda-mode pythonic groovy-mode editorconfig autothemer ivy-hydra flyspell-correct-ivy counsel-projectile counsel swiper wgrep smex ivy flyspell-correct-helm flyspell-correct auto-dictionary phpunit phpcbf php-extras php-auto-yasnippets drupal-mode php-mode pcache org-journal sql-indent pug-mode hide-comnt helm-gtags ggtags uuidgen typescript-mode request spinner osx-dictionary org-projectile org org-download livid-mode skewer-mode simple-httpd link-hint multiple-cursors intero hlint-refactor parent-mode helm-hoogle haml-mode git-link fringe-helper git-gutter+ pos-tip epl flx evil-visual-mark-mode evil-unimpaired iedit evil-ediff paredit highlight eshell-z dumb-jump f darkokai-theme web-completion-data s dash-functional company-ghci column-enforce-mode bind-map xterm-color window-numbering web-mode spacemacs-theme spaceline planet-theme persp-mode orgit organic-green-theme org-plus-contrib omtose-phellack-theme neotree naquadah-theme monokai-theme moe-theme majapahit-theme magit-gitflow leuven-theme less-css-mode json-mode hl-todo hindent helm-projectile helm-make projectile helm-descbinds helm-c-yasnippet helm-ag grandshell-theme gotham-theme google-translate git-messenger exec-path-from-shell evil-mc evil-matchit evil-exchange eshell-prompt-extras ensime sbt-mode scala-mode dracula-theme diff-hl darktooth-theme company-quickhelp coffee-mode badwolf-theme auto-yasnippet auto-compile ace-link auto-complete avy ghc tern anzu smartparens magit magit-popup haskell-mode git-gutter git-commit with-editor company helm helm-core yasnippet js2-mode markdown-mode alert hydra flycheck dash quelpa package-build use-package which-key evil color-theme-sanityinc-tomorrow zonokai-theme zenburn-theme zen-and-art-theme yaml-mode ws-butler web-beautify volatile-highlights undo-tree underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tide tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smooth-scrolling smeargle slim-mode shm shell-pop seti-theme scss-mode sass-mode reverse-theme reveal-in-osx-finder restart-emacs rainbow-delimiters railscasts-theme purple-haze-theme professional-theme powerline popwin popup pkg-info phoenix-dark-pink-theme phoenix-dark-mono-theme pcre2el pbcopy pastels-on-dark-theme paradox page-break-lines packed osx-trash org-repo-todo org-present org-pomodoro org-bullets open-junk-file oldlace-theme occidental-theme obsidian-theme noflet noctilux-theme niflheim-theme mustang-theme multi-term move-text monochrome-theme molokai-theme mmm-mode minimal-theme material-theme markdown-toc macrostep lush-theme lorem-ipsum log4e linum-relative light-soap-theme launchctl json-snatcher json-reformat js2-refactor js-doc jbeans-theme jazz-theme jade-mode ir-black-theme inkpot-theme info+ indent-guide ido-vertical-mode hungry-delete htmlize highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-mode-manager helm-flx helm-css-scss helm-company hc-zenburn-theme haskell-snippets gruvbox-theme gruber-darker-theme goto-chg golden-ratio gnuplot gntp gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-gutter-fringe git-gutter-fringe+ gh-md gandalf-theme flycheck-pos-tip flycheck-haskell flx-ido flatui-theme flatland-theme firebelly-theme fill-column-indicator farmhouse-theme fancy-battery eyebrowse expand-region evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-escape evil-cleverparens evil-args evil-anzu eval-sexp-fu espresso-theme esh-help emmet-mode elisp-slime-nav django-theme diminish define-word darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-web company-tern company-statistics company-ghc company-cabal colorsarenice-theme color-theme-sanityinc-solarized cmm-mode clues-theme clean-aindent-mode cherry-blossom-theme busybee-theme buffer-move bubbleberry-theme bracketed-paste birds-of-paradise-plus-theme bind-key auto-highlight-symbol async apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
