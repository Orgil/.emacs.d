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
(provide 'init-company)
