(use-package smartparens
  :ensure smartparens
  :diminish smartparens-mode
  :init
  (use-package evil-smartparens
    :ensure evil-smartparens
    :load-path "site-lisp/evil-smartparens"
    :diminish evil-smartparens-mode
    :config (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))
  (require 'smartparens-config)
  (smartparens-global-mode)
  (show-smartparens-global-mode))
(provide 'init-smartparens)
