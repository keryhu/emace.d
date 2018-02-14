;;; package --- Summary
;;; description: for all c++ config
;;; Commentary:
;;; Code:
(use-package rtags
  :ensure t
  :config
  (rtags-enable-standard-keybindings c-mode-base-map "M-r")
  (setq rtags-display-result-backend 'helm)
  (rtags-enable-standard-keybindings)
  (add-hook 'c-mode-common-hook 'rtags-start-process-unless-running)
  (add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
  (add-hook 'objc-mode-hook 'rtags-start-process-unless-running)
  )

(global-set-key (kbd "<f5>") (lambda ()
			       (interactive)
			       (defvar path (concat (projectile-project-root) "/run.sh"))
			       (shell-command path)))

(use-package projectile
  :config
  (projectile-mode))

;; (use-package cmake-ide
;;   :ensure t
;;   :config
;;   (require 'rtags)
;;   (cmake-ide-setup)
;;   (setq cmake-ide-flags-c++ t)
;;   (setq cmake-ide-flags-c t)
;;   )

(use-package cmake-mode
  :ensure t
  :mode (("\\.cmake\\'" . cmake-mode)
         ("CMakeLists.txt" . cmake-mode)))
(use-package google-c-style
  :ensure t
  :config
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  (add-hook 'c-mode-common-hook 'google-make-newline-indent))
;; gdb debug config
;; use gdb-many-windows by default
(defvar gdb-many-windows t )
;; Non-nil means display source file containing the main routine at startup
(defvar gdb-show-main t)

(provide 'kery-c++)

;;; kery-c++.el  ends here

