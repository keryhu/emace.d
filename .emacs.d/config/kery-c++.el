;;; package --- Summary
;;; description: for all c++ config
;;; Commentary:
;;; Code:
;; change all header files to c++ mode(for header completion)
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
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
  :init
  (add-hook 'c-mode-common-hook 'google-set-c-style)
  (add-hook 'c-mode-common-hook 'google-make-newline-indent)
  :config
  (setq c-hungry-delete-key t)
  )

(use-package modern-cpp-font-lock
  :ensure t
  :config
  (modern-c++-font-lock-global-mode t))

(use-package clang-format
  :ensure t
  :config
  (add-hook 'c-mode-common-hook
            '(lambda ()
               (local-set-key (kbd "C-c b") 'clang-format-buffer)
               ;;(local-set-key (kbd "C-c i r") 'clang-format-region)
	       ))
  (defvar clang-format-style-option "google"))



;; Disable company in gdb mode
(defvar company-global-modes '(not gud-mode))

(provide 'kery-c++)

;;; kery-c++.el  ends here

