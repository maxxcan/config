;; configuración del entorno exwm-x para EmacsOS

(require 'exwm)
(require 'exwm-x)
(require 'exwmx-example)
(exwmx-input-set-key (kbd "C-t v") 'exwmx:file-browser)
(exwmx-input-set-key (kbd "C-t f") 'exwmx:web-browser)
(exwmx-input-set-key (kbd "C-t e") 'exwmx:emacs)
(exwmx-input-set-key (kbd "C-t z") 'exwmx-floating-hide-all)
(exwmx-input-set-key (kbd "C-t C-c") 'exwmx-xfce-new-terminal)
(exwmx-input-set-key (kbd "C-t b") 'exwmx-switch-application)

(exwmx-input-set-key (kbd "C-t C-f") 'exwmx-floating-toggle-floating)

