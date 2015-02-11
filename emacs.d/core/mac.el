(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)

(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;(set-face-attribute 'default nil :family "M+ 1m" :height 160 :weight 'light)
(set-face-attribute 'default nil :family "Input Mono Compressed" :height 160 :weight 'light)

;; Set emacs client
(set-variable 'magit-emacsclient-executable "/usr/local/Cellar/emacs/24.3/bin/emacsclient")

;; Meta key settings
(setq mac-option-key-is-meta nil)
(setq mac-command-key-is-meta t)
(setq mac-command-modifier 'meta)
(setq mac-option-modifier nil)


;; Set server socket directory for connecting to emacs daemon
;;(setq server-socket-dir (format "/tmp/emacs%d" (user-uid)))

;; move to trash when deleting
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

(if (functionp 'mouse-wheel-mode) (mouse-wheel-mode -1))

;; use aspell for spell checking: brew install aspell --lang=en
(setq ispell-program-name "/usr/local/bin/aspell")

(provide 'mac)
