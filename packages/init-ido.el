(use-package ido
  :init
  (progn
    (ido-mode 1)
    (use-package ido-vertical-mode
      :init (ido-vertical-mode 1))
    (use-package flx-ido
      :init (flx-ido-mode 1))
    (use-package ido-ubiquitous
      :init (ido-everywhere 1)
	    (ido-ubiquitous-mode 1))
    (use-package smex
      :init (smex-initialize)
      :bind ("M-x" . smex)))
  (progn
    (setq ido-enable-prefix nil
          ido-enable-flex-matching t
          ido-case-fold t
          ido-create-new-buffer 'always
          ido-use-filename-at-point nil
          ido-max-prospects 10)
    (add-to-list 'ido-ignore-files "\\.DS_Store"))
   :config
	(set-face-attribute 'ido-vertical-first-match-face nil
	  :background nil
	  :foreground "orange")
	(set-face-attribute 'ido-vertical-only-match-face nil
	  :background nil
	  :foreground nil)
	(set-face-attribute 'ido-vertical-match-face nil
	  :foreground nil)
)

(provide 'init-ido)
