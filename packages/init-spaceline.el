(use-package spaceline-config
  :ensure spaceline
  :config
  (spaceline-emacs-theme)
  (setq-default
    powerline-height 20
    powerline-default-separator 'wave
    spaceline-flycheck-bullet "❖ %s"
    spaceline-separator-dir-left '(right . right)
    spaceline-separator-dir-right '(left . left)
    spaceline-highlight-face-func 'spaceline-highlight-face-evil-state
  )
  (spaceline-compile
    'main
  )
  (set-face-attribute 'spaceline-evil-emacs nil :background "#be84ff")
  (set-face-attribute 'spaceline-evil-insert nil :background "#5fd7ff")
  (set-face-attribute 'spaceline-evil-motion nil :background "#ae81ff")
  (set-face-attribute 'spaceline-evil-normal nil :background "#a6e22e")
  (set-face-attribute 'spaceline-evil-replace nil :background "#f92672")
  (set-face-attribute 'spaceline-evil-visual nil :background "#fd971f")
)
(provide 'init-spaceline)
