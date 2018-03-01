;;; package --- Summary
;;; description: for org mode confg
;;; Commentary:
;;; Code:

(add-hook 'org-mode-hook '(lambda ()
			    (setq fill-column 80)
			    (auto-fill-mode 1)
			    ))

(provide 'kery-org)
;;; kery-org.el  ends here

