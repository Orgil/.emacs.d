;; Evil mode

(use-package evil
  :ensure t
  :config
  (evil-mode 1)

  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader ",")
    (evil-leader/set-key
      "gs" 'magit-status
    )
  )
  (use-package evil-surround
      :ensure t
      :config
      (global-evil-surround-mode))
)

(provide 'init-evil)
