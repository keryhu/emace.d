;;; package --- Summary
;;; Commentary:
;;; code:
;; config company to all buffer

(use-package yasnippet
  :ensure t
  :delight yas-minor-mode
  :demand
  :init (yas-global-mode 1)
  :config
  (setq yas-snippet-dirs
	'("~/.emacs.d/snippets"  ;; personal snippets
	  ))
  )
;; company
(use-package company
  :ensure t
  :delight
  :init   (global-company-mode 1)
  :config

;;  (setq company-backends (delete 'company-semantic company-backends))
  (setq company-idle-delay              0
	company-minimum-prefix-length   2
	company-show-numbers            t
	company-tooltip-limit           20
	company-dabbrev-downcase        nil)
  ;; weight by frequency，按照经常使用的顺序排序
  (defvar company-transformers '(company-sort-by-occurrence))
  )

(use-package company-flx :ensure t
  :config (company-flx-mode +1))

;; Add yasnippet support for all company backends
;; https://github.com/syl20bnr/spacemacs/pull/179
(defvar company-mode/enable-yas t
  "Enable yasnippet for all backends.")
(defun company-mode/backend-with-yas (backend)
  "BACKEND (a nonsense doc to get rid of warning)."
  (if (or (not company-mode/enable-yas)
	  (and (listp backend) (member 'company-yasnippet backend)))
      backend
    (append (if (consp backend) backend (list backend))
	    '(:with company-yasnippet))))

(defvar company-backends (mapcar #'company-mode/backend-with-yas company-backends))


(provide 'kery-completion)


;;;  kery-completion.el ends here
