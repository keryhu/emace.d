;;; package --- Summary
;;; description: for emacs frame or windows set
;;; Commentary:
;;; Code:

;; 设置初始化的frame 的宽，距离左边的像素，高，已经字体大小
(add-to-list 'default-frame-alist '(width  . 150))
(add-to-list 'default-frame-alist '(left  . 5))
(add-to-list 'default-frame-alist '(height . 80))

;; 隐藏滚动栏和菜单，
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;; 欢迎页面的话语删除了
(setq initial-scratch-message nil)
(setq inhibit-startup-screen t)
;; Ensure new emacsclients attach to current frame, instead of creating a new frame
(setq ns-pop-up-frames nil)

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

(use-package winner
  :config
  (winner-mode))

(use-package window-numbering
  :ensure t
  :init (window-numbering-mode 1))

(provide 'kery-window)

;;; kery-window.el  ends here

