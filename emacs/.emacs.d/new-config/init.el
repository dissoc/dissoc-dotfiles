(message "Loading emacs configuration files...")

;; do a few things here to make emacs look better
;; before loading everything else
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)

(when (package-installed-p 'darkokai-theme)
  (load-theme 'darkokai))

(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(defvar my-packages '(avy
                      load-relative
                      undo-tree
                      darkokai-theme))

(dolist (package my-packages)
  (unless (package-installed-p package)
    (package-install package)))

(add-to-list 'load-path (expand-file-name "modules" user-emacs-directory))

(require 'clojure-module)

(load-theme 'darkokai)
