;;; package --- Summary
;;; Commentary:
;;; code:
(load-theme 'dracula t)

;; heighlight current line
(global-hl-line-mode 1)
;; 在窗口底下加上时间显示
(display-time-mode 1)
;;  更改 yes/no 为 y/n
(fset 'yes-or-no-p 'y-or-n-p)
;; 使得括号能够通过高亮，相互匹配，照亮
(show-paren-mode 1)
(defvar show-paren-delay 0)
;; 自动插入匹配的另一半括号,尝试使用 smartparen
(electric-pair-mode 1)

(provide 'kery-ui)

;;;  kery-ui.el ends here
