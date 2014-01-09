(defun prefix-key (key)
  (global-unset-key (read-kbd-macro key))
  (define-prefix-command (intern (concat key "-map")))
  (global-set-key (read-kbd-macro key) (intern (concat key "-map"))))

(prefix-key "C-i")
(prefix-key "C-q")

;; Search
(global-set-key (kbd "C-c s") 'ag-project)
(global-set-key (kbd "C-c S") 'isearch-forward)
(global-set-key (kbd "C-c f") 'fiplr-find-file)
(global-set-key (kbd "C-c F") 'find-file)
(global-set-key (kbd "C-c -") 'fiplr-clear-cache)

;; buffers
(global-set-key (kbd "C-c w") 'clean-and-save-buffer)
(global-set-key (kbd "C-c b") 'ibuffer)
(global-set-key (kbd "C-c C-c") 'switch-to-previous-buffer)

;; editing
(global-set-key (kbd "C-u") 'undo)
(global-set-key (kbd "C-i") 'redo)
(global-set-key (kbd "C-c i") 'change-inner)
(global-set-key (kbd "C-c o") 'change-outer)
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)
(global-set-key (kbd "C-q") 'er/expand-region)

;; terminal
(global-set-key (kbd "C-c t") 'multi-term)
(global-set-key (kbd "C-c T") 'multi-term-next)

;; movement
(global-set-key (kbd "C-c l") 'goto-line-with-feedback)
(global-set-key [remap goto-line] 'goto-line-with-feedback)

;; git
(global-set-key (kbd "C-c g") 'magit-status)

;; project drawer
(global-set-key (kbd "C-c n") (kbd "C-c s"))

;; docs
(global-set-key (kbd "C-c d") 'dash-at-point)


(provide 'key-bindings)
