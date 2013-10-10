(defun clean-and-save-buffer ()
  "Does some basic cleanup on the buffer before saving."
  (interactive)
  (cleanup-buffer)
  (save-buffer))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer.
Including indent-buffer, which should not be called automatically on save."
  (interactive)
  (untabify-buffer)
  (whitespace-cleanup)
  (indent-buffer))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))




