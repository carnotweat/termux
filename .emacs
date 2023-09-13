;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;'(package-selected-packages '(undo-tree nix-mode magit)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(package-selected-packages '(dash)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )
 '(custom-safe-themes
   '("90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" default))
 '(package-selected-packages
   '(haskell-snippets hasklig-mode haskell-emacs-text haskell-tab-indent haskell-emacs-base haskell-mode nix-mode editorconfig  projectile magit agda-editor-tactics eglot ligature use-package ))
 '(warning-suppress-types '((use-package) (comp) (comp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
;;(add-to-list 'eglot-server-programs '(nix-mode . ("rnix-lsp")))
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;;and `paOAckage-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(use-package lemmington :ensure t)
;; direnv
(use-package direnv
 :config
 (direnv-mode))
;; package vterm
(use-package vterm
  :ensure t)


(use-package vterm-tmux
  :load-path  "~/clone/vterm-tmux/vterm-tmux.el")
(require 'vterm-tmux)

;;   :commands (telega)
;;   :defer t)
;; (add-to-list 'package-archives
;;            '("melpa-stable" . "https://stable.melpa.org/packages/"))
;;(add-to-list 'package-pinned-packages '(telega . "melpa-stable"))
;; (quelpa '(telega :fetcher github
;;                :repo "zevlg/telega.el"
;;                :branch "master"
;;                :files (:defaults "contrib" "etc" "server" "Makefile")))
(quelpa
 '(vlang-mode :fetcher url
              :url "https://raw.githubusercontent.com/naheel-azawy/vlang-mode.el/master/vlang-mode.el"))
(require 'vlang-mode)
;; package mastodon
  (use-package mastodon
    :ensure t
    :config
    (mastodon-discover))
    (setq mastodon-instance-url "https://emacs.ch"
          mastodon-active-user "brokenix")
  ;;   ;; (setq mastodon-instance-url 
  ;;   ;;       mastodon-active-user "brokenix")
    

;; (package-initia
(use-package ligature
  :load-path "path-to-ligature-repo"
  :config
  ;; Enable the "www" ligature in every possible major mode
  (ligature-set-ligatures 't '("www"))
  ;; Enable traditional ligature support in eww-mode, if the
  ;; `variable-pitch' face supports it
  (ligature-set-ligatures 'eww-mode '("ff" "fi" "ffi"))
  ;; Enable all Cascadia Code ligatures in programming modes
  (ligature-set-ligatures 'prog-mode '("|||>" "<|||" "<==>" "<!--" "####" "~~>" "***" "||=" "||>"
                                       ":::" "::=" "=:=" "===" "==>" "=!=" "=>>" "=<<" "=/=" "!=="
                                       "!!." ">=>" ">>=" ">>>" ">>-" ">->" "->>" "-->" "---" "-<<"
                                       "<~~" "<~>" "<*>" "<||" "<|>" "<$>" "<==" "<=>" "<=<" "<->"
                                       "<--" "<-<" "<<=" "<<-" "<<<" "<+>" "</>" "###" "#_(" "..<"
                                       "..." "+++" "/==" "///" "_|_" "www" "&&" "^=" "~~" "~@" "~="
                                       "~>" "~-" "**" "*>" "*/" "||" "|}" "|]" "|=" "|>" "|-" "{|"
                                       "[|" "]#" "::" ":=" ":>" ":<" "$>" "==" "=>" "!=" "!!" ">:"
                                       ">=" ">>" ">-" "-~" "-|" "->" "--" "-<" "<~" "<*" "<|" "<:"
                                       "<$" "<=" "<>" "<-" "<<" "<+" "</" "#{" "#[" "#:" "#=" "#!"
                                       "##" "#(" "#?" "#_" "%%" ".=" ".-" ".." ".?" "+>" "++" "?:"
                                       "?=" "?." "??" ";;" "/*" "/=" "/>" "//" "__" "~~" "(*" "*)"
                                       "\\\\" "://"))
  ;; Enables ligature checks globally in all buffers. You can also do it
  ;; per mode with `ligature-mode'.
  (global-ligature-mode t))

;; agda mode

;;(add-to-list 'load-path "~/.emacs.d/site-lisp")
;;(progn (cd "~/.emacs.d/site-lisp")
;;       (normal-top-level-add-subdirs-to-load-path))
;;(require 's)
(use-package editorconfig
  :ensure t
  :config
  (editorconfig-mode 1))

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("a77735fe0193d57476298d982de95c51f1625da7aa4a07473be8143cf3326dc2" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" default))
 '(elfeed-feeds
   '("https://r6research.livejournal.com/data/rss" "https://joe-moeller.com/author/jmoeller/feed/"))
 '(epg-gpg-program "/home/dev/.nix-profile/bin/gpg")
 '(newsticker-url-list nil)
 '(org-feed-alist
   '(("" "https://patternsinfp.wordpress.com/feed/" "~/org-roam/feed2.org" "lense")
     ("jm" "https://joe-moeller.com/hi/feed/" "~/org-roam/feed.org" "feed")
     ("haskell" "https://r6research.livejournal.com/data/rss" "~/org-roam/feed1.org" "1")))
 '(package-selected-packages '(editorconfig use-package undo-tree nix-mode magit))
 '(warning-suppress-log-types '((comp))))
;; (require 'gnus-notes-helm)
;; org-browser
(setq browse-url-browser-function 'browse-url-eww)
;; (gnus-notes-init)
(defvar bootstrap-version)
(let ((bootstrap-file
      (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
        "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
        'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; (straight-use-package 'gnus)
;; ;;(straight-use-package 'org-mode)
;; (straight-use-package '(gnus-notes :host github
;;                                    :repo "deusmax/gnus-notes"
;;                                    :branch "master"))
;; (org :type git
;;      :repo "https://code.orgmode.org/bzg/org-mode.git"
;;      :local-repo "org"
;;      :depth full
;;      :pre-build (straight-recipes-org-elpa--build)
;;      :build (:not autoloads)
;;      :files (:defaults "lisp/*.el" ("etc/styles/" "etc;;/styles/*")))
;; source profiles 
(setq shell-command-switch "-ic")
(defun sanityinc/add-subdirs-to-load-path (parent-dir)
  ;; "Add every non-hidden subdir of PARENT-DIR to `load-path'."
  (let ((default-directory parent-dir))
    (setq load-path
          (append
           (cl-remove-if-not
            #'file-directory-p
            (directory-files (expand-file-name parent-dir) t "^[^\\.]"))
           load-path))))
(load-theme 'material t)
(require 'epa-file)

(epa-file-enable)
(setq nov-unzip-program (executable-find "bsdtar")
      nov-unzip-args '("-xC" directory "-f" filename))
(setq default-frame-alist
      '((top . 10) (left . 2)
        (width . 80) (height . 53)
;;        (font . "terminus-iso8859-1-bold-14")
        ))

;;(require 'mastodon-alt)
;;(mastodon-alt-tl-activate)
(use-package lsp-bridge
  :straight '(lsp-bridge :type git :host github :repo "manateelazycat/lsp-bridge"
            :files (:defaults "*.el" "*.py" "acm" "core" "langserver" "multiserver" "resources")
            :build (:not compile))
  :init
  (global-lsp-bridge-mode))
