;;; package --- Summary
;;; description: projectile and helm-projectile.
;;; Commentary:
;;; Code:

(use-package projectile
  :delight
  :config
  (setq projectile-indexing-method 'native)
  (setq projectile-enable-caching nil)
  ;;change the remote file exists cache expire to 10 minutes
  (setq projectile-file-exists-remote-cache-expire (* 10 60))
  (setq projectile-completion-system 'helm)
  (projectile-mode))


(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(provide 'kery-projectile)

;;; kery-projectile.el  ends here

