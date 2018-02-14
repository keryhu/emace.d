;;; package --- Summary
;;; description: clean model line
;;; Commentary:
;;; Code:

(use-package cyphejor
  :ensure t
  :config
  (progn
    (setq
     cyphejor-rules
     '(:upcase
       ("bookmark"    "→")
       ("buffer"      "β")
       ("diff"        "Δ")
       ("dired"       "δ")
       ("emacs"       "ε")
       ("fundamental" "Ⓕ")
       ("inferior"    "i" :prefix)
       ("interaction" "i" :prefix)
       ("interactive" "i" :prefix)
       ("lisp"        "λ" :postfix)
       ("menu"        "▤" :postfix)
       ("haskell"     "λ=")
       ("mode"        "")
       ("package"     "↓")
       ("python"      "π")
       ("org"         "Ω")
       ("shell"       "sh" :postfix)
       ("text"        "ξ")))
    (cyphejor-mode 1)))

(provide 'kery-cyphejor)

;;; kery-cyphejor.el  ends here

