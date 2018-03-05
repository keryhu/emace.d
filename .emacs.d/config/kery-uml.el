;;; package --- Summary
;;; description: set uml
;;; Commentary:
;;; Code:

(use-package plantuml-mode
  :ensure t
  :init
  (setq plantuml-jar-path
        (expand-file-name "~/.emacs.d/plugins/plantuml.jar"))
  (setq org-plantuml-jar-path
        (expand-file-name "~/.emacs.d/plugins/plantuml.jar"))
  (add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
  :config
  (setq plantuml-output-type "png")
  )

  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml))

(use-package flycheck-plantuml
  :ensure t
  :config
  (flycheck-plantuml-setup))

(provide 'kery-uml)

;;; kery-uml.el  ends here

