(use-package flycheck
  :ensure t
  :commands flycheck-mode
  :init
    (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
  :config
    (global-flycheck-mode 1)

    (defun my/use-eslint-from-node-modules ()
    (let* ((root (locate-dominating-file
		 (or (buffer-file-name) default-directory)
		 "node_modules"))
	 (eslint (and root
		      (expand-file-name "node_modules/eslint/bin/eslint.js" root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))

    (setq-default flycheck-disabled-checkers
		(append flycheck-disabled-checkers '(javascript-jshint)))
    (flycheck-add-mode 'javascript-eslint 'web-mode)
    (setq-default flycheck-temp-prefix ".flycheck")
)
(provide 'init-flycheck)
