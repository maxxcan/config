;; configuración para el lector de rss elfeed


;; iniciamos elfeed y elfeed-goodies

(require 'elfeed)
(require 'elfeed-goodies)

(elfeed-goodies/setup)


;; Load elfeed-org
(require 'elfeed-org)

;; Initialize elfeed-org
;; This hooks up elfeed-org to read the configuration when elfeed
;; is started with =M-x elfeed=
(elfeed-org)

;; Optionally specify a number of files containing elfeed
;; configuration. If not set then the location below is used.
;; Note: The customize interface is also supported.
(setq rmh-elfeed-org-files (list "~/.emacs.d/config/elfeed.org"))

