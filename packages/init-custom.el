; save ui settings to custom file - paths in init-path
(use-package cus-edit
  :defer t
  :config
  (setq custom-file --custom-file
        custom-buffer-done-kill nil            ; Kill when existing
        custom-buffer-verbose-help nil         ; Remove redundant help text
        custom-unlispify-tag-names nil
        custom-unlispify-menu-entries nil)
  :init (load --custom-file 'no-error 'no-message))
(provide 'init-custom)
