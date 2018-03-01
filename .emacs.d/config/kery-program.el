;;; package --- Summary
;;; description: fro all program config
;;; Commentary:
;;; Code:

;;For our comments (only comments, not code) to be automatically filled in programming modes
(defun comment-auto-fill ()
  "Comment fill ."
  (setq-local comment-auto-fill-only-comments t)
  (auto-fill-mode 1))

(add-hook 'prog-mode-hook '(lambda ()
			     (comment-auto-fill)
			     (setq fill-column 80)
			     (linum-mode 1)
			     (auto-fill-mode 1)
			     (column-number-mode 1)
			     ))






(provide 'kery-program)

;;; kery-program.el  ends here

