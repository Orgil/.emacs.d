(use-package json-mode                  ; JSON
  :ensure t
  :mode (("\\.json\\'" . json-mode))
  :init
  (defun my-json-hook ()
    (face-remap-add-relative 'font-lock-keyword-face '((:foreground "#ffd37f")))
  )
  (add-hook 'json-mode-hook 'my-json-hook)
  :commands (json-mode))
(provide 'init-jsonmode)
