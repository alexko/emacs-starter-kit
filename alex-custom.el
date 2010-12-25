(when window-system (color-theme-inkpot))
(defun f-toggle-selective-display (column)
  (interactive "P")
  (set-selective-display
   (if selective-display nil (or column 1))))

(global-set-key [f1] 'f-toggle-selective-display)

(defun insert-unixtime ()
  (interactive)
  (insert (format-time-string "%Y%m%d%H%M%S" (current-time))))

(define-key global-map [(control c) (d)] 'insert-date)
(define-key global-map [(control c) (t)] 'insert-unixtime)

(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "chromium-browser")
(setq org-directory "~/org")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(setq org-attach-directory (concat org-directory "/data"))
;;(setq org-agenda-files (list org-default-notes-file))
(eval-after-load 'org
  '(progn ;; Add .org files to the agenda
     (mapcar (lambda (file) (add-to-list 'org-agenda-files file))
             (directory-files (expand-file-name "~/org/") t "^\\w+\\.org$"))))
(setq org-refile-targets '((org-agenda-files . (:level . 1))))
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler)) ;!!
(add-hook 'remember-mode-hook 'org-remember-apply-template)
;; (setq org-remember-templates
;;       '(("Todo" ?t "* TODO %?\n  %i\n  %a" "~/org/todo.org" "Tasks")
;;         ("Journal" ?j "* %U %?\n\n  %i\n  %a" "~/org/journal.org")
;;         ("Idea" ?i "* %?\n  %i\n  %a" "~/org/journal.org" "Ideas")))
(setq org-remember-templates
      '(("Todo" ?t "* TODO %^{Title} %^g\n%?\nAdded: %U" "~/org/tasks.org" "Tasks")
        ("Journal"   ?j "* %^{Head Line} %U %^g\n%i%?"  "~/org/journal.org")
        ("Clipboard" ?c "* %^{Head Line} %U %^g\n%c\n%?"  "~/org/journal.org")
        ("XClipboard" ?x "* %^{Head Line} %U %^g\n%x\n%?"  "~/org/journal.org")
        ("Expenses"   ?e "* %^{Description} %U %^g\n%?"   "~/org/finance.org")
        ("Book" ?b "* %^{Book Title} %t :book: \n%[~/.emacs.d/org/.book.tmpl]\n" 
         "~/org/journal.org")
        ("Daily Review" ?a "* %t :review: \n%[~/.emacs.d/org/.review.tmpl]\n"
         "~/org/journal.org")
        ("Idea" ?i "* %?\n  %i\n  %a" "~/org/journal.org" "Ideas")))

(define-key global-map "\C-cr" 'org-remember)
;(define-key global-map "\C-cc" 'org-capture)

(setq org-log-done t)
(setq org-odd-levels-only t)
(setq org-hide-leading-stars t)
(setq org-enforce-todo-dependencies t)
(setq org-agenda-dim-blocked-tasks t)
(setq org-agenda-include-diary t)
(setq org-clock-persist 'history)
;; (org-clock-persistence-insiduate)

(setq org-agenda-custom-commands
      '(("h" "Daily habits" 
         ((agenda ""))
         ((org-agenda-show-log t)
          (org-agenda-ndays 7)
          (org-agenda-log-mode-items '(state))
          (org-agenda-skip-function '(org-agenda-skip-entry-if 'notregexp ":DAILY:"))))
        ;; other commands here
        ))
;; save/restore desktop sessions
;;(load "desktop")
(desktop-load-default)
;;(desktop-read) ;;-> spurious warning: file appears to be used by own pid
(desktop-save-mode 1)
;;(load "pivotal-tracker")
(provide 'alex-custom)
