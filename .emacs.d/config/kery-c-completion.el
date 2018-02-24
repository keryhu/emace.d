;;; package --- Summary
;;; description: for c++ completion
;;; Commentary:
;;; Code:

;; irony config
(use-package irony
  :ensure t
  :defer t
  :init
  (add-hook 'c++-mode-hook 'irony-mode)
  (add-hook 'c-mode-hook 'irony-mode)
  (add-hook 'objc-mode-hook 'irony-mode)
  :config
  ;; replace the `completion-at-point' and `complete-symbol' bindings in
  ;; irony-mode's buffers by irony-mode's function
  (defun my-irony-mode-hook ()
    (define-key irony-mode-map [remap completion-at-point]
      'irony-completion-at-point-async)
    (define-key irony-mode-map [remap complete-symbol]
      'irony-completion-at-point-async))
  (add-hook 'irony-mode-hook 'my-irony-mode-hook)
  (add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
  )

(use-package company-irony
  :after (irony)
  :config
  (progn
	(setq company-backends (delete 'company-semantic company-backends))
	(add-to-list 'company-backends 'company-irony)
	(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
	))

(use-package company-irony-c-headers
  :after (irony)
  :config (add-to-list 'company-backends ' company-irony-c-headers))

(provide 'kery-c-completion)

;;; kery-c-completion.el  ends here

