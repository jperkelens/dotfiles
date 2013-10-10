(show-smartparens-global-mode t)


;(setq sp-highlight-pair-overlay nil)
;(setq sp-highlight-wrap-overlay nil)
;(setq sp-highlight-wrap-tag-overlay nil)
;(setq sp-navigate-consider-symbols t)

(add-hook 'js2-mode-hook (lambda () (smartparens-mode 1)))

(provide 'setup-smartparens)
