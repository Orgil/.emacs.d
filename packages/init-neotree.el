(use-package neotree
  :ensure all-the-icons
	:init
	(add-hook 'neotree-mode-hook
		(lambda ()
			(define-key evil-normal-state-local-map (kbd "i") 'neotree-enter-horizontal-split)
			(define-key evil-normal-state-local-map (kbd "s") 'neotree-enter-vertical-split)
			(define-key evil-normal-state-local-map (kbd "p") 'neotree-select-up-node)
			(define-key evil-normal-state-local-map (kbd "m a") 'neotree-create-node)
			(define-key evil-normal-state-local-map (kbd "m d") 'neotree-delete-node)
			(define-key evil-normal-state-local-map (kbd "m m") 'neotree-rename-node)
			(define-key evil-normal-state-local-map (kbd "m c") 'neotree-copy-node)
			(define-key evil-normal-state-local-map (kbd "C") 'neotree-change-root)
			(define-key evil-normal-state-local-map (kbd "m i") 'neotree-hidden-file-toggle)
			(define-key evil-normal-state-local-map (kbd "R") 'neotree-refresh)
			(define-key evil-normal-state-local-map (kbd "o") 'neotree-enter)
			(define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
	:config
	(defun neotree-project-dir ()
			"Open NeoTree using the git root."
			(interactive)
			(let ((project-dir (projectile-project-root))
						(file-name (buffer-file-name)))
				(neotree-toggle)
				(if project-dir
						(if (neo-global--window-exists-p)
								(progn
									(neotree-dir project-dir)
									(neotree-find file-name)))
					(message "Could not find git project root."))))
	(global-set-key [f4] 'neotree-project-dir)
	(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
	(setq neo-window-width 28)
)
(provide 'init-neotree)
