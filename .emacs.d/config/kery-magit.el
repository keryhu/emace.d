;;; package --- Summary
;;; Commentary:
;;; code:

;;  global set magit when start up
(use-package magit
  :ensure t
  :bind
  (("C-c g" . magit-status)))

(provide 'kery-magit)

;;;  kery-magit.el ends here
