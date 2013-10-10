(require 'sr-speedbar)

(setq speedbar-hide-buttonbrackets-flag t
      speedbar-show-unknown-files t
      speedbar-smart-directory-expand-flag t
      speedbar-use-images nil
      speedbar-indentation-width 2
      speedbar-update-flag t
      sr-speedbar-auto-refresh t
      sr-speedbar-skip-other-window-p t
      sr-speedbar-right-side nil)

(global-set-key (kbd "C-c s") 'sr-speedbar-toggle)

(provide 'setup-sr-speedbar)
