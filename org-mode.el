;; configuración para el org-mode

;; Org-mode, configuración general

;; Además de añadir notas y lugares comunes

  ;;; Should write a toggle function to show descriptive or literate links in Org-mode
  ;;(setq org-descriptive-links nil)

  ;; Define the location of the file to hold tasks
  (setq org-default-notes-file "~/Dropbox/Documents/Orgzly/notes.org")

  ;; Define a kanban style set of stages for todo tasks
  (setq org-todo-keywords
        '((sequence "PORHACER" "ENPROCESO" "BLOQUEADO" "REVISION" "|" "HECHO" "ARCHIVADO")))

  ;; Setting Colours (faces) for todo states to give clearer view of work
  (setq org-todo-keyword-faces
        '(("PORHACER" . org-warning)
          ("ENPROCESO" . "yellow")
          ("BLOQUEADO" . "red")
          ("REVISION" . "orange")
          ("HECHO" . "green")
          ("ARCHIVADO" .  "blue")))

  ;; Progress Logging
  ;; When a TODO item enters DONE, add a CLOSED: property with current date-time stamp
  (setq org-log-done 'time)

  (setq org-agenda-files (list "~/Dropbox/Documents/Orgzly/GTD.org"))

  (setq org-agenda-include-diary t)
  (setq org-agenda-include-all-todo t)

;;; Identado en los bloques de código en org-mode

(setq org-src-tab-acts-natively t)


;; org-reveal

;; (setq org-reveal-root "file:///reveal.js") 


;; configuración del calendario chulo

(require 'calfw-org)
(setq cfw:org-overwrite-default-keybinding t)
(setq calendar-week-start-day 1)
(setq calendar-month-name-array
      ["Enero" "Febrero" "Marzo" "Abril" "Mayo" "Junio"
       "Julio"    "Agosto"   "Septiembre" "Octubre" "Noviembre" "Diciembre"])
(setq calendar-day-name-array
      ["Domingo" "Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado"])

;; Prettier bullets

(use-package org-bullets
  :commands (org-bullets-mode)
  :init
  (setq org-bullets-bullet-list '("●"))
  (add-hook 'org-mode-hook #'org-bullets-mode))

;; configuración para el autocompletado de org con org-ac

(require 'org-ac)
(org-ac/config-default)

;; wrap

(add-hook 'org-mode-hook 'turn-on-visual-line-mode)

;;Configure org-mode with cider

;; Configure Org-mode supported languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '((clojure . t)
   (dot . t)
   (emacs-lisp . t)))

;; Specify the Clojure back-end we want to use in Org-mode.
;; I personally use Cider, but one could specify Slime
(setq org-babel-clojure-backend 'cider)


(defun gtd ()
  "Entrada principal para el archivo gtd"
  (interactive)
  (find-file "~/Dropbox/Documents/Orgzly/GTD.org"))

(defun actividades ()
  "Entrada para el archivo de actividades"
  (interactive)
  (find-file "~/Dropbox/Documents/Orgzly/Actividades.org"))
