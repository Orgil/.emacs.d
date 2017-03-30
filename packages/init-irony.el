(use-package irony
  :ensure company-irony
  :commands irony-mode
  :init
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (defun my-irony-mode-hook ()
    (setq company-backends '(company-irony-c-headers company-irony))
    (setq irony-additional-clang-options '("-std=c++14")))
  (add-hook 'irony-mode-hook 'my-irony-mode-hook)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options))
(provide 'init-irony)
