;; Emacs configuration

(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t
      initial-scratch-message nil)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq-default cursor-type 'box)
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
(setq confirm-kill-emacs 'y-or-n-p)

;;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-postion 1)
;;; disable bell ring
(setq ring-bell-function 'ignore)

;;; setting default font
(set-face-attribute 'default nil
  :family "Hack" :height 120 :weight 'normal)

;;; highlight current line
(global-hl-line-mode 1)
;;; line numbers
(global-linum-mode 1)
;;; customize line numbers
(setq linum-format
  (lambda (line) (propertize
     (format (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
       (concat " %" (number-to-string w) "d ")) line) 'face 'linum)))

;; make both fringes 4 pixels wide
(fringe-mode 4)

;; dont use srgb color space
(setq ns-use-srgb-colorspace nil)
;; Anti-aliasing
(setq mac-allow-anti-aliasing t)


(use-package company
  :ensure t
	:config
	(global-company-mode t)
)

(use-package company-tern
  :ensure company
	:config
	(setq company-tern-meta-as-single-line t)
	(add-to-list 'company-backends 'company-tern)
)

(use-package tern
  :ensure t
  :defer t
  :diminish tern-mode
  :config
  (progn
    (add-hook 'js2-mode-hook 'tern-mode)))

(provide 'init-defaults)
