;;; package --- Summary
;;; description: for emacs orgmode font.
;;; Commentary:
;;; Code:
;; Setting English Font

;;;中文与英文字体设置
;; Setting English Font

(defun create-frame-font-mac()          ;emacs 若直接启动 启动时调用此函数似乎无效
  (set-face-attribute
   'default nil :font "Menlo 12")
  ;; Chinese Font
  (dolist (charset '( han symbol cjk-misc bopomofo)) ;script 可以通过C-uC-x=查看当前光标下的字的信息
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "PingFang SC" :size 14)))

  (set-fontset-font (frame-parameter nil 'font)
                    'kana                 ;script ｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺ
                    (font-spec :family "Hiragino Sans" :size 14))
  (set-fontset-font (frame-parameter nil 'font)
                    'hangul               ;script 까까까까까까까까까까까까까까까까까까까까
                    (font-spec :family "Apple SD Gothic Neo" :size 16))

  )
(when (and (equal system-type 'darwin) (window-system))
  (add-hook 'after-init-hook 'create-frame-font-mac))

(defun create-frame-font-w32()          ;emacs 若直接启动 启动时调用此函数似乎无效
  (set-face-attribute
   'default nil :font "Courier New 10")
  ;; Chinese Font
  (dolist (charset '( han symbol cjk-misc bopomofo)) ;script 可以通过C-uC-x=查看当前光标下的字的信息
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "新宋体" :size 16)))
  (set-fontset-font (frame-parameter nil 'font)
                    'kana                 ;script ｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺｺ
                    (font-spec :family "MS Mincho" :size 16))
  (set-fontset-font (frame-parameter nil 'font)
                    'hangul               ;script 까까까까까까까까까까까까까까까까까까까까
                    (font-spec :family "GulimChe" :size 16)))

(when (and (equal system-type 'windows-nt) (window-system))
  (add-hook 'after-init-hook 'create-frame-font-w32))

(defun  emacs-daemon-after-make-frame-hook(&optional f) ;emacsclient 打开的窗口相关的设置
  (with-selected-frame f
    (when (window-system)
      (when (equal system-type 'darwin) (create-frame-font-mac))
      (when (equal system-type 'windows-nt) (create-frame-font-w32))
      )))

(add-hook 'after-make-frame-functions 'emacs-daemon-after-make-frame-hook)

(provide 'kery-org-font)

;;; kery-org-font.el  ends here

