;;; package --- Summary
;;; description: for org mode confg
;;; Commentary:
;;; Code:

;; set org-mode table 中英文混排对齐问题 begin
(setq fonts
      (cond ((eq system-type 'darwin)     '("Monaco"    "STHeiti"))
            ((eq system-type 'gnu/linux)  '("Menlo"     "WenQuanYi Zen Hei"))
            ((eq system-type 'windows-nt) '("Consolas"  "Microsoft Yahei"))))
(set-face-attribute 'default nil :font
                    (format "%s:pixelsize=%d" (car fonts) 14))
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font) charset
                    (font-spec :family (car (cdr fonts)))))
;; Fix chinese font width and rescale
(setq face-font-rescale-alist '(("Microsoft Yahei" . 1.2) ("WenQuanYi Micro Hei Mono" . 1.2) ("STHeiti". 1.2)))
;; set org-mode table 中英文混排对齐问题 end.

 (add-hook 'text-mode-hook 'turn-on-auto-fill)
(add-hook 'org-mode-hook '(lambda () (setq fill-column 80)))

 (global-visual-line-mode 1)

(provide 'kery-org)
;;; kery-org.el  ends here

