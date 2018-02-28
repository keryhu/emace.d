;;; package --- Summary
;;; description: for web config
;;; Commentary:
;;; Code:

(use-package web-mode
  :ensure t
  :mode
  ("\\.js$" . web-mode)
  ("\\.html$" . web-mode)
  ("\\.scss$" . web-mode)
  :config
  (defvar web-mode-markup-indent-offset 2)
  (defvar web-mode-css-indent-offset 2)
  )


(provide 'kery-web)

;;; kery-web.el  ends here

