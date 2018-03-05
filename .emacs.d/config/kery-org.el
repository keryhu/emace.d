;;; package --- Summary
;;; description: for org mode confg
;;; Commentary:

;;; Code:
(use-package org
  :config
  (setq org-agenda-files
	(append (file-expand-wildcards "~/Desktop/document/orgmode/*.org")))

  (defvar org-agenda-custom-commands
    '(("l" "agenda:"
       ((agenda  "" ((org-agenda-overriding-header "Two-Days")
		     (org-agenda-span 2)))
	(tags-todo "生活|IT|购物")))))

  (defvar org-src-fontify-natively t)   ;; 设置orgmode文本内语法高亮
  (defvar org-log-done 'time) ; 当todo事项改变的时候，记录当前时间
  (defvar org-list-indent-offset 2)
  (setq org-startup-folded nil)
  (defvar org-startup-indented t)
  (setq org-startup-with-inline-images t)
  (setq org-confirm-babel-evaluate nil) ;Don’t ask before evaluating code blocks.
  (org-babel-do-load-languages
   'org-babel-load-languages
   '(
     (org . t)
     (plantuml . t)
     (emacs-lisp . t)
     (latex . t)
     ))
   (setq fill-column 80)
   (auto-fill-mode 1)

   )

  (provide 'kery-org)
;;; kery-org.el  ends here

