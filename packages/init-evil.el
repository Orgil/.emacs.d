;; Evil mode

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
	;;; window navigation
	(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
	(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
	(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
	(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)
	(define-key evil-normal-state-map (kbd "SPC") 'avy-goto-word-1)

	;;; j k navigation visual line
	(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
	(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

	;;; c-j c-k page up/down
	(define-key evil-normal-state-map (kbd "C-u") (lambda ()
																									(interactive)
																									(evil-scroll-up nil)))
	(define-key evil-normal-state-map (kbd "C-d") (lambda ()
																									(interactive)
																									(evil-scroll-down nil)))
	(define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)

	(setq-default evil-shift-width 2)
	(setq-default evil-shift-round nil)

	;;; esc quits
	(defun minibuffer-keyboard-quit ()
		"Abort recursive edit.
	In Delete Selection mode, if the mark is active, just deactivate it;
	then it takes a second \\[keyboard-quit] to abort the minibuffer."
		(interactive)
		(if (and delete-selection-mode transient-mark-mode mark-active)
				(setq deactivate-mark  t)
			(when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
			(abort-recursive-edit)))
	(define-key evil-normal-state-map [escape] 'keyboard-quit)
	(define-key evil-visual-state-map [escape] 'keyboard-quit)
	(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
	(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
	(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
	(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
	(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode)
    (evil-leader/set-leader ",")
		(defun switch-to-previous-buffer ()
			"Switch to previously open buffer.
			Repeated invocations toggle between the two most recently open buffers."
			(interactive)
			(switch-to-buffer (other-buffer (current-buffer) 1)))
    (evil-leader/set-key
      "gst" 'magit-status
			"q" 'kill-buffer-and-window
			"w" 'save-buffer
			"," 'switch-to-previous-buffer
    )
  )

  (use-package evil-surround
      :ensure t
      :config
      (global-evil-surround-mode 1))

  (use-package evil-matchit
      :ensure t
      :config
			(global-evil-matchit-mode 1))

  (use-package evil-visualstar
      :ensure t
      :config
			(global-evil-visualstar-mode t))

  (use-package evil-commentary
      :ensure t
      :config
			(evil-commentary-mode 1))
)

(provide 'init-evil)
