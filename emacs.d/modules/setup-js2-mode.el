;; font-lock
(add-font-lock-kw 'js2-mode "function" "\u0192")

(setq-default js2-strict-inconsistent-return-warning nil)
(setq-default js2-strict-missing-semi-warning nil)
(setq-default js2-allow-keywords-as-property-names t)

(setq js2-basic-offset 2)
(setq-default js2-basic-offset 2)
(setq js2-missing-semi-one-line-override t)
(setq-default js2-missing-semi-one-line-override t)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook 'hs-minor-mode)

(provide 'setup-js2-mode)
