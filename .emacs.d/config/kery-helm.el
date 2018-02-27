;;; package --- Summary
;;; Commentary:
;;; code:

(use-package helm
  :ensure t
  :delight
  :demand t
  :bind (("C-c h" . helm-command-prefix)
         ("C-c l" . helm-locate)
         ("C-c f" . helm-find)
         ("C-x b" . helm-mini)
         ("C-x C-f" . helm-find-files)
         ("M-x" . helm-M-x)
         ("M-y" . helm-show-kill-ring)
         ("M-s o" . helm-occur))
  :config (helm-mode))

(provide 'kery-helm)

;;;  kery-helm.el ends here
