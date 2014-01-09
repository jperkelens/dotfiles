(require 'imenu)

(defun clean-and-save-buffer ()
  "Does some basic cleanup on the buffer before saving."
  (interactive)
  (cleanup-buffer)
  (save-buffer))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (delete-trailing-whitespace)
  (untabify-buffer))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect 
      (progn
        (linum-mode)
        (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))

 (defun switch-to-previous-buffer ()
      (interactive)
      (switch-to-buffer (other-buffer (current-buffer) 1)))
