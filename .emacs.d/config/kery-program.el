;;; package --- Summary
;;; description: fro all program config
;;; Commentary:
;;; Code:

;; 自动换行的时候，不拆分单词，而且kill-line ,删除的是一整行。
(setq-default word-wrap t)
(setq-default fill-column 80)
;; turn on line number and column 和 编程时80字符自动换行
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'prog-mode-hook 'auto-fill-mode)
(column-number-mode 1)

;;For our comments (only comments, not code) to be automatically filled in programming modes
;; (defun comment-auto-fill ()
;;       (setq-local comment-auto-fill-only-comments t)
;;       (auto-fill-mode 1))
;; (add-hook 'prog-mode-hook 'comment-auto-fill)


(provide 'kery-program)

;;; kery-program.el  ends here

