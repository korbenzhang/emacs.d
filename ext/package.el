;; Package

(require 'package)

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
						 ("marmalade" . "https://marmalade-repo.org/packages/")
						 ("milkbox" . "http://melpa.milkbox.net/packages/")))
;;; for go-eldoc
;;(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

;;;(package-refresh-contents)

;; auto installed package
(when (not package-archive-contents)
  (package-refresh-contents))
