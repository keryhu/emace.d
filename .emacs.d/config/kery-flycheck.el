;;; package --- Summary
;;; Commentary:
;;; code:

(use-package flycheck
  :ensure t
  :delight
  :config
  (global-flycheck-mode)
  )


(use-package flycheck-irony
  :ensure t
  :after (flycheck irony)
  :init
  (setq flycheck-clang-language-standard "c++14")
  (add-hook 'flycheck-mode-hook #'flycheck-irony-setup)
  )

(provide 'kery-flycheck)

;;;  kery-flycheck.el ends here
