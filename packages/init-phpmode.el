(use-package php-mode
  :defer t
  :ensure t
  :config
  (defun my-php-mode-hook ()
    "My PHP mode configuration."
    (setq indent-tabs-mode nil
          tab-width 2
          c-basic-offset 2))
  (add-hook 'php-mode-hook 'my-php-mode-hook)
)
(provide 'init-phpmode)
