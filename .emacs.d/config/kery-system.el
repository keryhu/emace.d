;;; package --- Summary
;;; Commentary:
;;; code:

;; Personal Infomation
(setq user-full-name "Kery Hu")
(setq user-mail-address "keryhu@hotmail.com")
;; move to trash
(setq delete-by-moving-to-trash t)
(setq trash-directory "~/.Trash/")
(global-set-key "\C-cd" 'kill-whole-line)
;; 当文件或非文件磁盘更新的时候，自动更新buffer
(global-auto-revert-mode t)
;;  可以使得narrow 自动开启。
(put 'narrow-to-region 'disabled nil)
;; remove dired warning message
(when (string= system-type "darwin")
  (defvar dired-use-ls-dired nil))
;; backup
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs.d/backup"))
 delete-old-versions t
   kept-new-versions 6
   kept-old-versions 2
   version-control t)
;; cancel bell ring
(setq ring-bell-function 'ignore)
;; when kill a buffer , not confirmation
(setq kill-buffer-query-functions
  (remq 'process-kill-buffer-query-function
	kill-buffer-query-functions))
;;For our comments (only comments, not code) to be automatically filled in programming modes
(defun comment-auto-fill ()
      (setq-local comment-auto-fill-only-comments t)
      (auto-fill-mode 1))
(add-hook 'prog-mode-hook 'comment-auto-fill)

;; delight config
(delight '((abbrev-mode  nil  abbrev)
	    (irony-mode nil  irony)))

;; mac shell path export
(use-package exec-path-from-shell
:config
(exec-path-from-shell-initialize))

(provide 'kery-system)

;;;  kery-system.el ends here
