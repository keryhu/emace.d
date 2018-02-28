;;; package --- Summary
;;; Commentary:
;;; code:


;;  this is for my mac osx key bingding

(when (eq system-type 'darwin)  ; mac specific bindings
  (setq ns-command-modifier 'control ; command key = control
        ns-control-modifier 'super ; control key = super
        ns-alternate-modifier 'meta ; left alt key = meta
        ns-right-alternate-modifier 'alt)); 右边的 alt key =alt

;; 如果冲突，就改为 "C-z C-q"
(global-set-key (kbd "M-q") 'save-buffers-kill-emacs)
(global-set-key "\C-cd" 'kill-whole-line)

;; (when (eq system-type 'darwin)  ; mac specific bindings
;;   (setq mac-right-command-modifier 'meta ; right cmd = meta
;;         mac-command-modifier 'control ; left cmd = control
;;         mac-option-modifier 'super ; left option = super
;;         mac-right-option-modifier nil ; right option = special characters
;;         ns-function-modifier 'hyper ; fn key = hyper
;;         ns-right-alternate-modifier nil)); don't know what that is so I unbound it




(provide 'kery-keys)
;;;  kery-keys.el ends here
