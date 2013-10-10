(require 'helm-config)
(require 'helm-cmd-t)

(global-set-key (kbd "C-' C-t") 'helm-cmd-t)

(setq helm-ff-lynx-style-map nil
      helm-input-idle-delay 0.1
      helm-idle-delay 0.1)

(provide 'setup-helm-cmd-t)
