(require-package 'evil)
(require-package 'evil-leader)
(require-package 'evil-numbers)
(require-package 'evil-surround)
(require-package 'evil-nerd-commenter)

(setq evil-ex-search-vim-style-regexp t
      evil-leader/in-all-state t
      evil-leader/leader "SPC"
      evil-mode-line-format nil
      evil-search-module 'evil-search
      evil-want-C-u-scroll t
      evil-default-cursor t
	  evil-toggle-key "C-`")

(setq-default evil-shift-width 2)

;; https://github.com/cofi/evil-leader/issues/10
(evil-mode nil)
(global-evil-leader-mode t)
(evil-mode t)
(global-evil-surround-mode t)

;; key bindings
(fill-keymap evil-normal-state-map
	     "Y" (kbd "y$")
	     "C-c +" 'evil-numbers/inc-at-pt
	     "C-c -" 'evil-numbers/dec-at-pt)

;; (fill-keymap evil-window-map
;; 	     "u"   'winner-undo
;; 	     "C-r" 'winner-redo
;; 	     "M-h" 'buf-move-left
;; 	     "M-j" 'buf-move-down
;; 	     "M-k" 'buf-move-up
;; 	     "M-l" 'buf-move-right)

;; evil leader
(evil-leader/set-key
  "A" 'ag
  "G" 'magit-blame-mode
  "a" 'ag-project
  "c" 'simpleclip-copy
  "d" 'dired-jump
  "g" 'magit-status
  "f" 'fiplr-find-file
  "N" 'neotree-toggle

  "p b" 'projectile-switch-to-buffer
  "p D" 'projectile-dired
  "p d" 'projectile-find-dir
  "p e" 'projectile-explorer-open
  "p p" 'projectile-find-file)

(evilnc-default-hotkeys)

;; emmet mode
(defadvice emmet-expand-line (after evil-normal-state activate)
  "Enable Normal state after expansion"
  (evil-normal-state))
