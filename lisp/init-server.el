
;; Allow access from emacsclient
;; In windows should chown server to current user.
(require 'server)
(unless (server-running-p)(server-start))

(provide 'init-server)