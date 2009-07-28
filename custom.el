;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;   Set miscellaneous emacs prefs
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(align-open-comment-modes (quote (vhdl-mode emacs-lisp-mode lisp-interaction-mode lisp-mode scheme-mode c++-mode c-mode java-mode perl-mode cperl-mode python-mode makefile-mode ruby-mode)))
 '(align-perl-modes (quote (perl-mode cperl-mode ruby-mode)))
 '(backup-directory-alist (list (cons "." (expand-file-name "~/.emacs.d/backups/"))))
 '(case-fold-search t)
 '(comment-empty-lines (quote (quote eol)))
 '(comment-multi-line nil)
 '(comment-style (quote indent))
 '(compile-command "cd . ; make -j4 -k")
 '(completion-ignore-case t t)
 '(cperl-break-one-line-blocks-when-indent nil)
 '(cperl-continued-statement-offset 4)
 '(cperl-indent-comment-at-column-0 t)
 '(cperl-indent-left-aligned-comments t)
 '(cperl-indent-level 2)
 '(cperl-indent-parens-as-block t)
 '(cperl-invalid-face nil)
 '(cperl-tab-always-indent nil)
 '(css-indent-offset 2)
 '(current-language-environment "UTF-8")
 '(default-major-mode (quote text-mode))
 '(default-truncate-lines t t)
 '(develock-max-column-plist (quote (emacs-lisp-mode nil lisp-interaction-mode nil change-log-mode nil texinfo-mode nil c-mode nil c++-mode nil java-mode nil jde-mode nil html-mode nil html-helper-mode nil cperl-mode nil perl-mode nil mail-mode nil message-mode nil cmail-mail-mode nil tcl-mode nil ruby-mode nil)))
 '(even-window-heights nil)
 '(fill-column 80)
 '(flymake-gui-warnings-enabled nil)
 '(frame-title-format "[%b] in %F, %f" t)
 '(hl-line-mode nil t)
 '(ibuffer-expert t)
 '(icon-title-format "%b" t)
 '(ido-default-buffer-method (quote selected-window))
 '(ido-default-file-method (quote selected-window))
 '(ido-enable-flex-matching nil)
 '(ido-enable-regexp t)
 '(ido-ignore-directories (quote ("\\`CVS/" "\\`\\.\\./" "\\`\\./" "\\`\\.svn")))
 '(ido-ignore-files (quote ("\\`CVS/" "\\`#" "\\`.#" "\\`\\.\\./" "\\`\\./" "\\`\\.DS_Store" "\\`\\.Icon" "\\`LICENSE")))
 '(indent-region-mode nil t)
 '(inhibit-startup-screen t)
 '(javascript-indent-level 2)
 '(mac-option-modifier (quote super))
 '(mark-even-if-inactive t)
 '(nxhtml-default-encoding (quote utf-8))
 '(nxhtml-global-minor-mode t nil (nxhtml-menu))
 '(nxhtml-script-completion-pattern "\\.\\(?:js\\|js\\.erb\\)$")
 '(nxhtml-skip-welcome t)
 '(predictive-mode t)
 '(read-file-name-completion-ignore-case t)
 '(remote-shell-program "/usr/bin/ssh")
 '(require-final-newline t)
 '(ruby-deep-indent-paren nil)
 '(scroll-bar-mode (quote right))
 '(sh-indentation 2)
 '(show-paren-mode t nil (paren))
 '(tab-always-indent nil)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
;; '(tramp-default-method "scpc")
 '(tramp-auto-save-directory "/tmp/emacs-auto-saves-flip")
;; '(tramp-backup-directory-alist (quote (("." . "/Users/flip/.emacs.d/remote-backups/"))))
;; '(tramp-completion-reread-directory-timeout 300)
;; '(tramp-verbose 5)
 '(transient-mark-mode t)
 '(visible-bell t)
 '(x-select-enable-clipboard t)
 '(yaml-indent-offset 2))
 

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(compilation-warning ((((class color) (min-colors 16)) (:foreground "#b86833" :weight bold))))
 '(develock-bad-manner-face ((t (:background "#e8e8e8" :foreground "#805010" :weight bold))))
 '(develock-lonely-parentheses-face ((t (:background "white" :foreground "#202050"))))
 '(develock-long-line-face-1 ((t (:foreground "#330000"))))
 '(develock-long-line-face-2 ((t (:background "#ececb0" :foreground "#330000"))))
 '(develock-upper-case-attribute-face ((t (:background "#d0f0d0" :foreground "#004000"))))
 '(develock-upper-case-tag-face ((t (:background "#f0f0f0" :foreground "#400000"))))
 '(develock-whitespace-face-1 ((t (:background "white"))))
 '(develock-whitespace-face-2 ((t (:background "white"))))
 '(develock-whitespace-face-3 ((t (:background "white"))))
 '(font-lock-builtin-face ((((class color) (background light)) (:foreground "DarkSlateBlue"))))
 '(font-lock-comment-face ((((class color) (background light)) (:foreground "#004000"))))
 '(font-lock-constant-face ((((class color) (background light)) (:foreground "#772828"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "#8888aa"))))
 '(font-lock-function-name-face ((((class color) (background light)) (:foreground "#501070"))))
 '(font-lock-keyword-face ((((class color) (background light)) (:foreground "DodgerBlue3"))))
 '(font-lock-negation-char-face ((t (:background "#f0e8e8"))))
 '(font-lock-string-face ((((class color) (background light)) (:foreground "Tan4"))))
 '(font-lock-type-face ((((class color) (background light)) (:foreground "DarkSlateBlue"))))
 '(font-lock-variable-name-face ((((class color) (background light)) (:foreground "Gray30"))))
 '(font-lock-warning-face ((t (:foreground "#a02020" :weight bold))))
 '(highlight ((((class color) (min-colors 88) (background light)) (:background "#f4f4f4"))))
 '(isearch ((((class color) (background light)) (:background "burlywood" :foreground "Black"))))
 '(lazy-highlight ((((class color) (background light)) (:background "Beige" :foreground "FireBrick"))))
 '(link ((((class color) (min-colors 88) (background light)) (:foreground "#000088" :underline t))))
 '(mode-line ((((class color) (min-colors 88)) (:background "grey75" :foreground "black" :box (:line-width -1 :style released-button) :height 1.1 :family "Helvetica"))))
 '(region ((((class color) (background light)) (:background "honeydew2"))))
 '(rng-error-face ((t (:underline "#eecccc"))))
 '(secondary-selection ((t (:background "lavender"))))
 '(show-paren-match ((t (:background "bisque" :foreground "firebrick"))))
 '(trailing-whitespace ((((class color) (background light)) (:background "cornsilk2")))))
