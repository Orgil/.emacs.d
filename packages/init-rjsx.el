(use-package rjsx-mode
  :ensure t
  :defer 1
  :mode "\\.jsx$"
  :config
  (defadvice js-jsx-indent-line (after js-jsx-indent-line-after-hack activate)
    "Workaround sgml-mode and follow airbnb component style."
    (let* ((cur-line (buffer-substring-no-properties
		     (line-beginning-position)
                     (line-end-position))))
    (if (string-match "^\\( +\\)\/?> *$" cur-line)
      (let* ((empty-spaces (match-string 1 cur-line)))
        (replace-regexp empty-spaces
                        (make-string (- (length empty-spaces) sgml-basic-offset) 32)
                        nil
                        (line-beginning-position) (line-end-position)))))))
(provide 'init-rjsx)

