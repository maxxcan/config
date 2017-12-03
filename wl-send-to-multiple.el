(defun wl-draft-clean-mail-address (address)
  (replace-regexp-in-string "," "" address))

(defun wl-draft-send-to-multiple-receivers (addresses)
  (loop for address in addresses do
        (progn 
          (wl-user-agent-insert-header "To" 
                                       (wl-draft-clean-mail-address address))
          (let ((wl-interactive-send nil))
            (wl-draft-send))
          (sleep-for (random 10)))))

(defun wl-draft-send-to-multiple-receivers-from-buffer 
    (&optional addresses-buffer-name)
  "Send a mail to multiple recipients - one recipient at a time"
  (interactive "BBuffer with one address per line")
  (let ((addresses nil))
    (with-current-buffer addresses-buffer-name
      (setq addresses (split-string (buffer-string) "\n")))
    (if (y-or-n-p (concat "Send this mail to " 
                          (mapconcat 'identity addresses ", ")))
        (wl-draft-send-to-multiple-receivers addresses))))
