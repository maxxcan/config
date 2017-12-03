;; configuración de erc para autocompletar nicks

;; http://puntoblogspot.blogspot.com.es/2017/01/autocomplete-erc-nicks-with-sign-for.html

(defun rgc-add-@-to-nicks (old-function &rest arguments)
  "Add @nick alternatives to erc completion function."
  (apply 'append
         (mapcar (lambda (x) (list (concat "@" x) x))
                 (apply old-function arguments))))
(advice-add #'pcomplete-erc-nicks :around #'rgc-add-@-to-nicks)
;; Remove advice evaluating the following:
;; (advice-remove 'pcomplete-erc-nicks  #'rgc-add-@-to-nicks)
