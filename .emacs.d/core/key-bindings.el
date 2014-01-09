(defun prefix-key (key)
  (global-unset-key (read-kbd-macro key))
  (define-prefix-command (intern (concat key "-map")))
  (global-set-key (read-kbd-macro key) (intern (concat key "-map"))))

(prefix-key "C-i")

;; Search
(global-set-key (kbd "C-c s") 'ag-project)
(global-set-key (kbd "C-c S") 'isearch-forward)
(global-set-key (kbd "C-c f") 'fiplr-find-file)
(global-set-key (kbd "C-c F") 'find-file)

;; buffers
(global-set-key (kbd "C-c w") 'clean-and-save-buffer)
(global-set-key (kbd "C-c b") 'ibuffer)

;; editing
(global-set-key (kbd "C-u") 'undo)
(global-set-key (kbd "C-i") 'redo)
(global-set-key (kbd "C-c i") 'change-inner)
(global-set-key (kbd "C-c o") 'change-outer)

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
