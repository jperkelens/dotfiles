;;; Set emacs mode as default
(setq dotspacemacs-editing-style 'vim)

;; set theme
(spacemacs/load-theme 'soft-charcoal)

;; configure neo theme to use icons
;(setq neo-theme 'icons)

(setq initial-frame-alist '((top . 30) (left . 30) (width . 180) (height . 80)))

(set-face-attribute 'default nil :font "Input Mono" )
