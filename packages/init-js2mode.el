(use-package js2-mode
  :ensure t
  :config
  (setq-default js-indent-level 2)
  (setq-default js2-basic-offset 2)
  (add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
  (add-to-list 'interpreter-mode-alist '("node" . js2-mode))
)
(provide 'init-js2mode)
