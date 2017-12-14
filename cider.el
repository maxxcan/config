;; Configuración para cider

;; Use cider as the Clojure execution backend
(setq org-babel-clojure-backend 'cider)
(require 'cider)

;; Useful keybindings when using Clojure from Org
(org-defkey org-mode-map "\C-x\C-e" 'cider-eval-last-sexp)
(org-defkey org-mode-map "\C-c\C-d" 'cider-doc)

;; more configuration to cider with org-mode

;; Remove the markup characters, i.e., "/text/" becomes (italized) "text"
(setq org-hide-emphasis-markers t)

;; No timeout when executing calls on Cider via nrepl
(setq org-babel-clojure-nrepl-timeout nil)

;; Turn on visual-line-mode for Org-mode only
;; Note: you have to install "adaptive-wrap" from elpa
(add-hook 'org-mode-hook 'turn-on-visual-line-mode)

;; Enable Confluence export (or any other contributed export formats)
(require 'ox-confluence)

;; Configure Code blocks Behaviors

;; Let's have pretty source code blocks

(setq org-edit-src-content-indentation 0
      org-src-tab-acts-natively t
      org-src-fontify-natively t
      org-confirm-babel-evaluate nil)
      ;org-support-shift-select 'always
