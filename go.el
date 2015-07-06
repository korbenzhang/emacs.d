;; Go Mode settings

(require 'go-mode)

;;(add-hook 'before-save-hook 'gofmt-before-save)

(require 'go-errcheck)

(require 'go-eldoc) ;; Don't need to require, if you install by package.el

(add-hook 'go-mode-hook 'go-eldoc-setup)

(set-face-attribute 'eldoc-highlight-function-argument nil
                    :underline t :foreground "green"
                    :weight 'bold)

(add-hook 'go-mode-hook '(lambda ()
			   (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))

(add-hook 'go-mode-hook '(lambda ()
			   (local-set-key (kbd "C-c C-g") 'go-goto-imports)))


(add-hook 'go-mode-hook '(lambda ()
               (local-set-key (kbd "C-c C-f") 'gofmt)))

(add-hook 'before-save-hook 'gofmt-before-save)

(add-hook 'go-mode-hook '(lambda ()
			   (local-set-key (kbd "C-c C-k") 'godoc)))


(add-hook 'go-mode-hook (lambda ()
               (local-set-key (kbd \"M-.\") 'godef-jump)))


(load "~/.emacs.d/golang/oracle.el")

(add-hook 'go-mode-hook 'go-oracle-mode)

(add-to-list 'load-path "~/.emacs.d/golang/goflymake")
;;(require 'go-flymake)
;;(require 'go-flycheck)

(add-hook 'go-mode-hook 'company-mode)

(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends)
                               '(company-go))(company-mode)))

(load "~/.emacs.d/golang/go-autocomplete.el")

(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)
