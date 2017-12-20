;; configurando scalastyle
(setq flycheck-scalastyle-jar
      "/usr/share/java/scalastyle/scalastyle_2.11-1.0.0-batch.jar")

;; configurando javadoc

(setq-default dotspacemacs-configuration-layers '(
                                                  (scala :variables scala-indent:use-javadoc-style t)))

;; Automatically show the type of the symbol under the cursor

(setq-default dotspacemacs-configuration-layers '(
                                                  (scala :variables scala-use-java-doc-style t)))

;; Automatically insert asterisk in multiline comments

(setq-default dotspacemacs-configuration-layers '(
                                                  (scala :variables scala-auto-insert-asterisk-in-comments t)))

;; Automatically replace arrows with unicode ones

(setq-default dotspacemacs-configuration-layers '(
                                                  (scala :variables scala-use-unicode-arrows t)))

;; Iniciamos Ensime cuando abrimos un fichero scala

(setq-default dotspacemacs-configuration-layers '(
                                                  (scala :variables scala-auto-start-ensime t)))
