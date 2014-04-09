(defun pomodoro-message (msg)
  "Display a message in a buffer and maybe raise emacs frame."
  (when pomodoro-raise-frame
    (raise-frame (selected-frame)))
  (let ((this-window (selected-window)))
    (with-current-buffer (get-buffer-create pomodoro-buffer-name)
      (erase-buffer)
      (insert msg)
      (ding))
    (pop-to-buffer pomodoro-buffer-name)
    ;; suggest not to change window height, since it will distract users' work environment
    ;;(fit-window-to-buffer)
    ;; auto kill the buffer, after some wait
    (run-at-time "5 sec" nil 'kill-buffer pomodoro-buffer-name)
    (select-window this-window))
  (run-hook-with-args 'pomodoro-message-hook msg))

(provide 'setup-org-pomodoro)
