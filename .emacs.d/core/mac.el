(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

(set-face-attribute 'default nil :family "M+ 1m" :height 160 :weight 'light)

;; move to trash when deleting
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

(if (functionp 'mouse-wheel-mode) (mouse-wheel-mode -1))

;; use aspell for spell checking: brew install aspell --lang=en
(setq ispell-program-name "/usr/local/bin/aspell")

(provide 'mac)
