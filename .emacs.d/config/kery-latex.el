;;; package --- Summary
;;; description: for pdf latex
;;; Commentary:
;;; Code:


(use-package ox-latex
  :ensure nil
  :config
  (setq org-latex-default-table-environment "tabular")
  (setq org-latex-tables-booktabs t)
  (setq org-latex-listings 'minted) ; Tell the latex export to use the minted package for source code coloration.
  (setq org-latex-create-formula-image-program 'imagemagick)
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))
  (setq org-latex-classes
	'(("article"
	   "
\\documentclass[12pt,a4paper]{article}
\\usepackage[margin=2cm]{geometry}
\\usepackage{fontspec}
\\setromanfont{STSong}
\\usepackage{etoolbox}  % Quote 部份的字型設定
\\newfontfamily\\quotefont{STSong}
\\AtBeginEnvironment{quote}{\\quotefont\\small}
\\setmonofont[Scale=0.9]{Courier} % 等寬字型 [FIXME] Courier 中文會爛掉！
\\font\\cwSong=''STSong'' at 10pt
%\\font\\cwHei=''STSong'' at 10p %不知為何這套字型一用就爆掉...
\\font\\cwYen=''STSong'' at 10pt
\\font\\cwKai=''STSong'' at 10pt
\\font\\cwMing=''STSong'' at 10pt
\\font\\wqyHei=''STSong'' at 10pt
\\font\\wqyHeiMono=''STSong'' at 10pt
\\font\\wqyHeiMicro=''STSong'' at 10pt
\\XeTeXlinebreaklocale ``zh''
\\XeTeXlinebreakskip = 0pt plus 1pt
\\linespread{1.36}
% [FIXME] ox-latex 的設計不良導致 hypersetup 必須在這裡插入
\\usepackage{hyperref}
\\hypersetup{
  colorlinks=true, %把紅框框移掉改用字體顏色不同來顯示連結
  linkcolor=[rgb]{0,0.37,0.53},
  citecolor=[rgb]{0,0.47,0.68},
  filecolor=[rgb]{0,0.37,0.53},
  urlcolor=[rgb]{0,0.37,0.53},
  pagebackref=true,
  linktoc=all,}
"
	   ("\\section{%s}" . "\\section*{%s}")
	   ("\\subsection{%s}" . "\\subsection*{%s}")
	   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	   ("\\paragraph{%s}" . "\\paragraph*{%s}")
	   ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
	  ))
  ;; [FIXME]
  ;; 原本是不要讓 org 插入 hypersetup（因為 org-mode 這部份設計成沒辦法自訂，或許可以去 report 一下？）
  ;; 改成自行插入，但這樣 pdfcreator 沒辦法根據 Emacs 版本插入，pdfkeyword 也會無效...幹。
  (setq org-latex-with-hyperref t)
  ;; 把預設的 fontenc 拿掉
  ;; 經過測試 XeLaTeX 輸出 PDF 時有 fontenc[T1]的話中文會無法顯示。
  ;; hyperref 也拿掉，改從 classes 處就插入，原因見上面 org-latex-with-hyperref 的說明。
  (setq org-latex-default-packages-alist
	'(("" "hyperref" nil)
	  ("AUTO" "inputenc" t)
	  ("" "fixltx2e" nil)
	  ("" "graphicx" t)
	  ("" "longtable" nil)
	  ("" "float" nil)
	  ("" "wrapfig" nil)
	  ("" "rotating" nil)
	  ("normalem" "ulem" t)
	  ("" "amsmath" t)
	  ("" "textcomp" t)
	  ("" "marvosym" t)
	  ("" "wasysym" t)
	  ("" "multicol" t)  ; 這是我另外加的，因為常需要多欄位文件版面。
	  ("" "amssymb" t)
	  "\\tolerance=1000"))
  ;; Use XeLaTeX to export PDF in Org-mode
  (setq org-latex-pdf-process
	'("xelatex -interaction nonstopmode -output-directory %o %f"
	  "xelatex -interaction nonstopmode -output-directory %o %f"
	  "xelatex -interaction nonstopmode -output-directory %o %f"))



  )
(provide 'kery-latex)

;;; kery-latex.el  ends here

