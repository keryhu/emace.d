;;; package --- Summary
;;; this is for emacs auto insert template , which had integration yasippet
;;; Commentary:
;;; Code:

;; 利用yasnipet模版,在创新新文件时,自动在文件中插入相应的模版
(autoload 'yas-expand-snippet "yasnippet")
(defun my-autoinsert-yas-expand()
  "Replace text in yasnippet template."
  (yas-expand-snippet (buffer-string) (point-min) (point-max)))

(use-package autoinsert
  :ensure t
  :config
  (auto-insert-mode 1)
  (setq-default auto-insert-directory "~/.emacs.d/auto-insert/")
  (setq auto-insert-query nil)

  (add-hook 'find-file-hook 'auto-insert)

  ;;这个就是新建以.sh 结尾的shell 脚本文件时，会自动插入sh-auto-insert文件中的内容

  (define-auto-insert "\\.el$" ["el-auto-insert" my-autoinsert-yas-expand])
  (define-auto-insert "\\.sh$" ["sh-auto-insert" my-autoinsert-yas-expand])
  (define-auto-insert "\\.cpp$" ["c++-auto-insert" my-autoinsert-yas-expand])
  (define-auto-insert "\\.cc$" ["c++-auto-insert" my-autoinsert-yas-expand])
  )
(provide 'kery-auto-insert)

;;; kery-auto-insert.el  ends here

