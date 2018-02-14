;;; package --- Summary
;;; Commentary:
;;; code:

(load-theme 'dracula t)

;; 设置初始化的frame 的宽，距离左边的像素，高，已经字体大小
(add-to-list 'default-frame-alist '(width  . 136))
(add-to-list 'default-frame-alist '(left  . 5))
(add-to-list 'default-frame-alist '(height . 80))
(add-to-list 'default-frame-alist '(font . "Monospace-13"))
;; 隐藏滚动栏和菜单，
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;; 欢迎页面的话语删除了
(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
;; turn on line number and column
(add-hook 'prog-mode-hook 'linum-mode)
(column-number-mode 1)

;; heighlight current line
(global-hl-line-mode 1)
;; 在窗口底下加上时间显示
(display-time-mode 1)


;;  更改 yes/no 为 y/n
(fset 'yes-or-no-p 'y-or-n-p)

;; config default dir
(setq default-directory "~/")

;; 使得括号能够通过高亮，相互匹配，照亮
(show-paren-mode 1)
(defvar show-paren-delay 0)
;; 自动插入匹配的另一半括号
(electric-pair-mode 1)

;; 自动换行的时候，不拆分单词，而且kill-line ,删除的是一整行。
(setq-default word-wrap t)


;; Show file full path in title bar
(setq-default frame-title-format
	      (list '((buffer-file-name " %f"
					(dired-directory
					 dired-directory
					 (revert-buffer-function " %b"
								 ("%b - Dir:  " default-directory)))))))


;; 自定义 modeline 和 多窗口右边的显示不同的分界线
      (custom-set-faces
 '(mode-line ((t (:foreground "black" :background "#9999ee" :box nil))))
 '(border ((t nil)))
 '(vertical-border ((t (:background "gray" :foreground "#9999ee"))))
 )




(provide 'kery-ui)

;;;  kery-ui.el ends here
