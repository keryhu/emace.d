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
(setq web-mode-enable-css-colorization t)
 (setq-default css-indent-offset 2
                web-mode-markup-indent-offset 2
                web-mode-css-indent-offset 2
                web-mode-code-indent-offset 2
                web-mode-attr-indent-offset 2)

  )


(provide 'kery-web)

;;; kery-web.el  ends here

