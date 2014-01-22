;; jade, stylus (sws = significant whitespace)
(require 'jade-mode)
(require 'sws-mode)
(add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
(add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

(provide 'setup-jade-mode)
