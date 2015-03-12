;; Load use-package module
(add-to-list 'load-path "~/.emacs.d/vendor/use-package")
(require 'cl)
(require 'use-package)

(load-file "~/.emacs.d/packages.el")
(mapc 'load (directory-files "~/.emacs.d/definitions" t "^[A-Za-z-]*\\.el"))
(mapc 'load (directory-files "~/.emacs.d/marktran-defs/definitions" t "^[A-Za-z-]*\\.el"))
(load-file "~/.emacs.d/settings.el")
