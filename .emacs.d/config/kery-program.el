;;; package --- Summary
;;; description: fro all program config
;;; Commentary:
;;; Code:

;;For our comments (only comments, not code) to be automatically filled in programming modesy

(add-hook 'prog-mode-hook '(lambda ()
			     (setq comment-auto-fill-only-comments t)
			     (linum-mode 1)
			     (auto-fill-mode 1)
			     ))



(provide 'kery-program)

;;; kery-program.el  ends here

