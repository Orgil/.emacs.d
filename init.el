(setq message-log-max 10000)
(setq load-prefer-newer t)

(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'load-path (expand-file-name "packages" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "configs" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "modes" user-emacs-directory))

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(require 'sensitive-mode)

(require 'init-paths)
(require 'init-defaults)

(require 'init-evil)
(require 'init-smartparens)

(require 'init-theme)
(require 'init-dired)
(require 'init-jsonmode)
(require 'init-company)
(require 'init-hlinum)
(require 'init-webmode)
(require 'init-flycheck)
(require 'init-spaceline)
(require 'init-ido)
(require 'init-phpmode)
(require 'init-js2mode)
(require 'init-projectile)
(require 'init-neotree)
(require 'init-magit)
(require 'init-irony)
(require 'init-origami)
(require 'init-sass)
(require 'init-markdown)
(require 'init-yasnippet)
(require 'init-avy)
;; JSX
(require 'init-rjsx)
;; Tern
(use-package tern
  :ensure t
  :defer 1
  :init (autoload 'tern-mode "tern" nil t))

(use-package company-tern
  :ensure t
  :defer 1
  :config (add-to-list 'company-backends 'company-tern))

(require 'init-custom)
(toggle-frame-fullscreen)
