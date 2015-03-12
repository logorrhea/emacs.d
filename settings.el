;; auto refresh buffers
;; http://whattheemacsd.com//sane-defaults.el-01.html
(global-auto-revert-mode t)

(setq auto-revert-verbose nil
      auto-save-default nil
      comment-auto-fill-only-comments t
      confirm-nonexistent-file-or-buffer nil
      custom-file "~/.emacs.d/custom.el"
      disabled-command-function nil
      global-auto-revert-non-file-buffers t
      kill-buffer-query-functions (remq 'process-kill-buffer-query-function
					kill-buffer-query-functions))

(setq-default c-basic-offset 4
	      fill-column 80
	      indent-tabs-mode t
	      tab-width 4
	      truncate-lines t)

(c-set-offset 'case-label '+)
(fset 'yes-or-no-p 'y-or-n-p)

;; load ~/.emacs.d/settings
(mapc 'load (directory-files "~/.emacs.d/settings" t "^[A-Za-z]*\\.el"))

;; Change default font size
(set-face-attribute 'default nil :height 140)
