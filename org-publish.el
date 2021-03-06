;; org-publish.el
(require 'ox-html)
(setq org-export-html-coding-system 'utf-8-unix)
(setq org-html-viewport nil)
(setq org-export-with-sub-superscripts nil)

;; always rebuild all files
(setq org-publish-use-timestamps-flag nil)

(setq org-export-default-language "de")

; No author / date at the bottom
(setf org-html-home/up-format "")
(setf org-html-footnotes-section "<div id='footnotes'><!--%s-->%s</div>")
(setf org-html-link-up "")
(setf org-html-link-home "")
(setf org-html-preamble nil)
(setf org-html-postamble nil)
(setf org-html-scripts "")

;;(require 'ox-publish)
(setq org-publish-project-alist nil)

(load "~/org/websites/achaia.org/achaia.org.el")
(load "~/org/websites/bookhacker.org/bookhacker.org.el")
(load "~/org/websites/gorgoneion-press.de/gorgoneion-press.de.el")

(setq org-publish-project-alist
      (append org-publish-project-alist
	      org-publish-project-achaia
	      org-publish-project-bookhacker
	      org-publish-project-gorgoneion-press))
