;;; package --- Summary
;;;    Emacs configuration
;;; Commentary:
;;; Code:
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)
;; === CUSTOM CHECK FUNCTION ===
(defun ensure-package-installed (&rest packages)
  "List neneded installled  package."
  (mapcar
   (lambda (package)
     (unless (package-installed-p package)
       (package-install package)))
   packages)
  )

(use-package delight  :ensure t)

;; === List my packages ===
;; simply add package names to the list
(ensure-package-installed
 'helm 'flycheck 'use-package 'dracula-theme 'company 'yasnippet 'autoinsert
 'magit 'delight 'cyphejor 'irony 'company-irony 'company-irony-c-headers
 'rtags 'flycheck-irony 'cmake-ide 'helm-rtags 'exec-path-from-shell
 'cmake-mode 'google-c-style 'projectile 'helm-projectile 'window-numbering
 'company-flx  'web-mode 'modern-cpp-font-lock 'clang-format 'plantuml-mode
 'flycheck-plantuml 'auctex
 )
;; 将自定义的配置文件放在 settings 目录下。
(add-to-list 'load-path	     "~/.emacs.d/config/")
;; keys set  所有的自定义的包，都必须用上自己 kery 的名字，要不然会出错
(require  'kery-keys)
(require  'kery-ui)
(require  'kery-helm)
(require  'kery-system)
(require  'kery-flycheck)
(require  'kery-completion)
(require  'kery-auto-insert)
(require  'kery-magit)
(require  'kery-cyphejor)
(require  'kery-c++)
(require  'kery-c-completion)
(require  'kery-projectile)
(require  'kery-gdb)
(require  'kery-web)
(require  'kery-window)
(require  'kery-org)
(require  'kery-program)
(require  'kery-org-font)
(require  'kery-uml)
(require  'kery-latex)
(require  'kery-customs)
;;(require  'kery-smartparent)


(provide 'init)
;;; init.el ends here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/a.org")))
 '(package-selected-packages
   (quote
    (org-table-comment web-mode company-c-headers google-c-style cmake-mode exec-path-from-shell helm-rtags cmake-ide company-irony-c-headers company-irony irony cyphejor magit yasnippet company use-package flycheck dracula-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(border ((t nil)))
 '(mode-line ((t (:foreground "black" :background "#9999ee" :box nil))))
 '(vertical-border ((t (:background "gray" :foreground "#9999ee")))))
