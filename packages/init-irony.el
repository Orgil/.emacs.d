(use-package irony
  :ensure company-irony
  :commands irony-mode
  :init
  (defun my-c-hook ()
    (when (member major-mode irony-known-modes)
      (irony-mode 1)
    )
  )
  (defun my-irony-mode-hook ()
    (setq company-backends '(company-irony-c-headers company-irony))
    (setq irony-additional-clang-options '("-std=c++14")))
  (add-hook 'c++-mode-hook 'my-c-hook)
  (add-hook 'c-mode-hook 'my-c-hook)
  (add-hook 'irony-mode-hook 'my-irony-mode-hook)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))
(provide 'init-irony)
