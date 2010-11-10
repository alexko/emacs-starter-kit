(defun indent-or-expand (arg)
  "Either indent according to mode, or expand the word preceding
point."
  (interactive "*P")
  (if (and
       (or (bobp) (= ?w (char-syntax (char-before))))
       (or (eobp) (not (= ?w (char-syntax (char-after))))))
      (dabbrev-expand arg)
    (indent-according-to-mode)))
 
(defun my-tab-fix ()
  (local-set-key [tab] 'indent-or-expand))
 
;; add hooks for modes you want to use the tab completion for:
(add-hook 'c-mode-hook          'my-tab-fix)
(add-hook 'sh-mode-hook         'my-tab-fix)
(add-hook 'emacs-lisp-mode-hook 'my-tab-fix)
(add-hook 'clojure-mode-hook    'my-tab-fix)

(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;;(eval-after-load "pymacs"
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))

(defun set-exec-path-from-shell-PATH () 
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'"))) 
    (setenv "PATH" path-from-shell) 
    (setq exec-path (split-string path-from-shell path-separator)))) 
(when (equal system-type 'darwin) 
  ;; When started from Emacs.app or similar, ensure $PATH 
  ;; is the same the user would see in Terminal.app 
  (if window-system (set-exec-path-from-shell-PATH)))

(setq rinari-tags-file-name "TAGS")
(provide 'tim-custom)