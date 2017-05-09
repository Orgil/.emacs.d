(use-package php-mode
  :defer t
  :ensure t
  :init
  (defun my-php-mode-hook ()
    "My PHP mode configuration."
  (setq tab-width 2
    indent-tabs-mode nil)
    (c-set-style "symfony2"))
  (add-hook 'php-mode-hook 'my-php-mode-hook)
)
(provide 'init-phpmode)
