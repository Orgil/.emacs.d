;; Emacs configuration

(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t
      initial-scratch-message nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default mode-require-final-newline nil)
(tool-bar-mode -1)
(savehist-mode 1)
;;; show other pair of brackets
(show-paren-mode t)
(menu-bar-mode 0)
(column-number-mode 1)

;;; disable scrollbar
(scroll-bar-mode -1)
(set-fill-column 100)

;;; disable blinking cursor
(blink-cursor-mode -1)

(setq ns-use-native-fullscreen nil)
(toggle-frame-fullscreen)

;;; no more type yes
(defalias 'yes-or-no-p 'y-or-n-p)

;;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-postion 1)
;;; disable bell ring
(setq ring-bell-function 'ignore)

;;; setting default font
(set-face-attribute 'default nil
  :family "Inconsolata for Powerline" :height 120 :weight 'normal)

;;; highlight current line
(global-hl-line-mode 1)
;;; line numbers
(global-linum-mode 1)
;;; customize line numbers
(setq linum-format
  (lambda (line) (propertize
     (format (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
       (concat " %" (number-to-string w) "d \u2502")) line) 'face 'linum)))

;; make both fringes 4 pixels wide
(fringe-mode 4)

(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-ocean t)
)

(use-package js2-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
  (add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
  (add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))
)

(use-package spaceline
  :ensure t
  :config
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main))))
)
(use-package spaceline-config
  :ensure spaceline
  :config
  (spaceline-spacemacs-theme)
)

; save ui settings to custom file - paths in init-path
(use-package cus-edit
  :defer t
  :config
  (setq custom-file --custom-file
        custom-buffer-done-kill nil            ; Kill when existing
        custom-buffer-verbose-help nil         ; Remove redundant help text
        custom-unlispify-tag-names nil
        custom-unlispify-menu-entries nil)
  :init (load --custom-file 'no-error 'no-message))

(provide 'init-defaults)
