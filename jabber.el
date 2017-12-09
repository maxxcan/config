;; configuración para Jabber


;; configuración para hacer una ventana pequeña
(setq 
 special-display-regexps 
 '(("jabber-chat" 
    (width . 80)
    (scroll-bar-width . 16)
    (height . 15)
    (tool-bar-lines . 0)
    (menu-bar-lines 0)
    (font . "-GURSoutline-Courier New-normal-r-normal-normal-11-82-96-96-c-70-iso8859-1")
    (left . 80))))


;;; Show your status in the header

(setq jabber-chat-header-line-format
      '(" " (:eval (jabber-jid-displayname jabber-chatting-with))
    	  " " (:eval (jabber-jid-resource jabber-chatting-with)) "\t";
    	  (:eval (let ((buddy (jabber-jid-symbol jabber-chatting-with)))
    		         (propertize
    		          (or
    		           (cdr (assoc (get buddy 'show) jabber-presence-strings))
    		           (get buddy 'show))
    		          'face
    		          (or (cdr (assoc (get buddy 'show) jabber-presence-faces))
    		              'jabber-roster-user-online))))
    	  "\t" (:eval (get (jabber-jid-symbol jabber-chatting-with) 'status))
    	  (:eval (unless (equal "" *jabber-current-show*)
    		         (concat "\t You're " *jabber-current-show*
    			               " (" *jabber-current-status* ")")))))


;; AutoSmiley mode

;;(require 'autosmiley)
;;(add-hook 'jabber-chat-mode-hook 'autosmiley-mode)

;;Announcing about new message

;; using xmessage

;; (add-hook 'jabber-alert-message-hooks 'jabber-message-xmessage) 

;; (require 'jabber-otr)

