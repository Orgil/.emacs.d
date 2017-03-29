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
