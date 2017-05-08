(use-package ido
  :init
  (progn
    (ido-mode 1)
    (require 'ido-other-window)
    (use-package ido-vertical-mode
      :ensure t
      :init (ido-vertical-mode 1))
    (use-package flx-ido
      :ensure t
      :init (flx-ido-mode 1))
    (use-package ido-ubiquitous
      :ensure t
      :init (ido-everywhere 1)
	    (ido-ubiquitous-mode 1))
    (use-package smex
      :ensure t
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
