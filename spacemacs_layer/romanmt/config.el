;;; Set emacs mode as default
(setq dotspacemacs-editing-style 'vim)

;; set theme
;;(spacemacs/load-theme 'soft-charcoal)
(spacemacs/load-theme 'flatland)

;; configure neo theme to use icons
(setq neo-theme 'icons)

;; turn off lock files
(setq create-lockfiles nil)

(setq initial-frame-alist '((top . 30) (left . 25) (width . 140) (height . 48)))

;;(set-default-font  "-*-Input Mono-ultralight-normal-normal-*-18-*-*-*-m-0-iso10646-1")
;;(set-face-attribute
;; 'default nil :font
;; "-*-Input Mono-light-normal-normal-*-18-*-*-*-m-0-iso10646-1")
;;(set-face-attribute 'default nil :family "Input Mono" )
;;(set-face-attribute 'default nil :weight ultra-light )

;; Move autosaves out of source tree
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;;;;Org mode configuration
;; Enable Org mode
;; Make Org mode work with files ending in .org
;;(with-eval-after-load 'org
  ;; here goes your Org config :)
  ;; ....
;;  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode)))

(setq enable-flyspell-auto-completion t)

;; add custom directories to yasnippet
;; add extra snippet directories
(setq yas-snippet-dirs (append yas-snippet-dirs
                               '("~/.emacs.d/private/snippets")))
