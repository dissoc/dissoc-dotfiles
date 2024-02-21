(message "Loading emacs configuration files...")

;; do a few things here to make emacs look better
;; before loading everything else
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)

;; load custom file so things like loading custom theme are remembered as okay
(setq custom-file (expand-file-name "emacs-custom.el" user-emacs-directory))
(load custom-file)

(when (package-installed-p 'ef-themes)
  (load-theme 'ef-cherie))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(defvar my-packages '(avy
                      ef-themes
                      load-relative
                      undo-tree
                      darkokai-theme))

(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))

(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

(require 'clojure-module)

(load-theme 'darkokai)
