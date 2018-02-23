;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-scratch-mode 'org-mode
   dotspacemacs-configuration-layers
   '(
     html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     better-defaults
     emacs-lisp
     git
     markdown
     ;;(markdown :variables markdown-live-preview-engine 'vmd)
     ;; org
     (shell :variables
             shell-default-full-span nil
             shell-default-height 60
             shell-default-shell 'ansi-term
             shell-default-position 'bottom)
     spell-checking
     syntax-checking
     (version-control :variables
                      version-control-global-margin t
                      version-control-diff-tool 'diff-hl
                      version-control-diff-side 'left)
     haskell
     auto-completion (haskell :variables haskell-completion-backend 'intero)
     ;(auto-completion
     ;                 :variables
     ;                 auto-completion-tab-key-behavior 'complete)
     osx
     yaml
     shell-scripts
     (scala :variables
            ;scala-enable-eldoc t
            scala-auto-insert-asterisk-in-comments t
            scala-auto-start-ensime t
            )
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(solarized-theme spaceline shell-pop evil-terminal-cursor-changer tabbar)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         solarized-dark
                         spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 10)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

; My funcs

; To enable writing a buffer to disk on exit from INSERT mode
(defun auto-save ()
  (if (and (buffer-file-name) (buffer-modified-p))
      (progn (save-buffer))
    (message "No file associated with this buffer")))


; Because `o` opens an indented new line
(defun haskell-evil-open-below ()
  (interactive)
  (evil-append-line nil)
  (haskell-indentation-newline-and-indent))

(defun haskell-evil-open-above ()
  (interactive)
  (evil-digit-argument-or-evil-beginning-of-line)
  (haskell-indentation-newline-and-indent)
  (evil-previous-line)
  (haskell-indentation-indent-line)
  (evil-append-line nil))

(defun enable-eldoc ()
  (setq-local eldoc-documentation-function
              (lambda ()
                (when (ensime-connected-p)
                  (ensime-type-at-point))))
  (eldoc-mode +1))


(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (push '("melpa-stable" . "stable.melpa.org/packages/") configuration-layer--elpa-archives)
  (push '("ensime" . "melpa-stable") package-pinned-packages)
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ; Doesn't seem to get rid of 'helm-bookmark-map' error
  ; Can do SPC f b to make it go away
  ; Need it to go away to create directories and move and rename files
  (require 'helm-bookmark)

  (setq ensime-eldoc-hints 'all)

  ; fix powerline
  (setq powerline-default-separator 'utf-8)
  (spaceline-compile)

  ; shift-l and shift-h in
  (define-key evil-normal-state-map "H" 'evil-beginning-of-line)
  (define-key evil-normal-state-map "L" 'evil-end-of-line)
  (define-key evil-motion-state-map "H" 'evil-beginning-of-visual-line)
  (define-key evil-motion-state-map "L" 'evil-end-of-visual-line)
  (define-key evil-normal-state-map (kbd "C-f j") #'evil-window-left)
  (define-key evil-normal-state-map (kbd "C-f l") #'evil-window-right)

  ; navigate panes
  (define-key evil-normal-state-map (kbd "C-f i") #'evil-window-up)
  (define-key evil-normal-state-map (kbd "C-f k") #'evil-window-down)
  (define-key evil-normal-state-map (kbd "C-f h") #'split-window-below-and-focus)
  (define-key evil-normal-state-map (kbd "C-f v") #'split-window-right-and-focus)

  ; close pane
  (define-key evil-motion-state-map (kbd "C-d") #'spacemacs/delete-window)

  ; kill buffer
  (define-key evil-normal-state-map (kbd "C-f d") #'kill-this-buffer)

  ; go to buffer
  (define-key evil-normal-state-map (kbd "C-f f") #'helm-buffers-list)

  (unless (display-graphic-p)
    (require 'evil-terminal-cursor-changer)
    (evil-terminal-cursor-changer-activate) ; or (etcc-on)
    )

  ; random
  (define-key evil-insert-state-map (kbd "TAB") 'tab-to-tab-stop)
  (setq-default evil-escape-delay 0.04)
  (setq-default evil-insert-state-cursor 'bar)
  (global-hl-line-mode -1)

  ; auto save
  (add-hook 'evil-insert-state-exit-hook 'auto-save)

  ; switch workspaces
  ; NOTE: Commented out in favor of frames since they are more appropriate than "workspaces"
  (define-key evil-normal-state-map (kbd "C-f 1") 'spacemacs/workspaces-transient-state/eyebrowse-switch-to-window-config-1)
  (define-key evil-normal-state-map (kbd "C-f 2") 'spacemacs/workspaces-transient-state/eyebrowse-switch-to-window-config-2)
  (define-key evil-normal-state-map (kbd "C-f 3") 'spacemacs/workspaces-transient-state/eyebrowse-switch-to-window-config-3)
  (define-key evil-normal-state-map (kbd "C-f 4") 'spacemacs/workspaces-transient-state/eyebrowse-switch-to-window-config-4)
  (define-key evil-normal-state-map (kbd "C-f w") 'spacemacs/workspaces-transient-state/eyebrowse-close-window-config)
  ; Frames are fucking retard and so not what I thought they were...
  ;(define-key evil-normal-state-map (kbd "C-f c") #'make-frame)
  ;(define-key evil-normal-state-map (kbd "C-f n") 'ns-prev-frame)
  ;(define-key evil-normal-state-map (kbd "C-f p") 'ns-next-frame)
  ;(define-key evil-normal-state-map (kbd "C-f w") 'delete-frame)

  ; A way to spawn new shells easily (Emacs is fucking dumb and just tries to use the same
  ; shell instance everywhere
  (define-key evil-normal-state-map (kbd "SPC p s") 'projectile-multi-term-in-root)

  ; Fix vim indentation issues in haskell-mode
  (with-eval-after-load "haskell-mode"
    (evil-define-key 'normal haskell-mode-map
      "o" 'haskell-evil-open-below
      "O" 'haskell-evil-open-above))

  (with-eval-after-load "scala-mode"
    (enable-eldoc))

  (with-eval-after-load 'intero
    (flycheck-add-next-checker 'intero '(warning . haskell-hlint)))


  ; Think this is supposed to keep the tool tip up indefinitely but
  ; the tool tip sucks anyway so the flycheck-display-errors-function below shows errors in minibuffer instead
  ; (setq error-tip-notify-keep-messages t)
  (setq flycheck-display-errors-function #'flycheck-display-error-messages-unless-error-list)

  ; Somehow tabs became 8 spaces long all of a sudden...dunno how
  (add-hook 'haskell-mode-hook
            (lambda ()
              (setq-default indent-tabs-mode nil)
              (setq tab-width 2)
              ))

  ; doesn't look right with solarized-dark font
  ;(add-hook 'scala-mode-hook
  ;         (lambda ()
  ;           (setq prettify-symbols-alist scala-prettify-symbols-alist)
  ;           (prettify-symbols-mode)))

  ; Navigate buffers
  (define-key evil-normal-state-map (kbd "[") 'switch-to-prev-buffer)
  (define-key evil-normal-state-map (kbd "]") 'switch-to-next-buffer)

  ; A tabbar. Still havent configured it to work right
  (require 'tabbar)
  (tabbar-mode)
  (setq tabbar-buffer-groups-function
        (lambda ()
          (list "All Buffers")))
  (set-face-attribute
   'tabbar-separator nil
   :background "gray20"
   :height 0.6)

  ; create file while in dired
  (define-key dired-mode-map "c" 'helm-find-files)

  ; when focused in non project file, open a file in current projectile project
  (define-key evil-normal-state-map (kbd "C-f p") 'projectile-switch-to-buffer)
  (define-key evil-normal-state-map (kbd "C-f o") 'projectile-find-file-other-window)


  ; visual mode highlight hello in (hello), press sm, parens are removed
  (define-key evil-visual-state-map "\m" 'evil-surround-delete)

  ;; wrap anything in visual mode in {-<thing>-} by pressing sb (for Haskell)
  (push '(?b . ("{- " . " -}")) evil-surround-pairs-alist)

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
    (web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data vmd-mode iedit highlight epl goto-chg ghub let-alist bind-key hydra f s noflet ensime sbt-mode scala-mode projectile avy async dash powerline tabbar evil-terminal-cursor-changer smartparens insert-shebang fish-mode company-shell helm-core evil helm org-plus-contrib gitignore-mode fringe-helper git-gutter+ git-gutter flyspell-correct pos-tip magit magit-popup git-commit with-editor mmm-mode markdown-toc markdown-mode flycheck gh-md ghc haskell-mode company yasnippet auto-complete define-word yaml-mode xterm-color ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package unfill toc-org spaceline smeargle shell-pop reveal-in-osx-finder restart-emacs rainbow-delimiters popwin persp-mode pcre2el pbcopy paradox osx-trash osx-dictionary orgit org-bullets open-junk-file neotree mwim multi-term move-text magit-gitflow macrostep lorem-ipsum linum-relative link-hint launchctl intero info+ indent-guide hungry-delete hlint-refactor hl-todo hindent highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-hoogle helm-gitignore helm-flx helm-descbinds helm-company helm-c-yasnippet helm-ag haskell-snippets google-translate golden-ratio gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ fuzzy flyspell-correct-helm flycheck-pos-tip flycheck-haskell flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help elisp-slime-nav dumb-jump diff-hl company-statistics company-ghci company-ghc company-cabal column-enforce-mode cmm-mode clean-aindent-mode auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(tabbar-separator (quote (0.5))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
