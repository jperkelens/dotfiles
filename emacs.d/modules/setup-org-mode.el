(setq org-directory "~/.org")
(setq org-mobile-directory "~/Dropbox/org")
(setq org-mobile-inbox-for-pull "~/Dropbox/org")

(add-to-list 'auto-mode-alist '("/.org/'" . org-mode))
(add-to-list 'org-agenda-files '("~/.org/"))

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

(transient-mark-mode 1)

(provide 'setup-org-mode)
