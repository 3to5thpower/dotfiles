(defpackage #:lem-my-init
  (:use #:cl
        #:lem))
(in-package :lem-my-init)

(lem-lisp-mode:lisp-mode)
(lem-paredit-mode:paredit-mode)

;; テーマをロード
(load-library "pygments-colorthemes")
(load-theme "monokai")

;;行番号表示
(setf (variable-value 'lem.line-numbers:line-numbers :global) t)

(lem-lisp-mode.paren-coloring:toggle-paren-coloring)


;;キーバインド
(defmacro bindkey (key command)
  `(define-key *global-keymap* ,key ',command))
;(bindkey "Return" lem.language-mode:newline-and-indent)
(define-key *global-keymap* "Return" 'lem.language-mode:newline-and-indent)
;(define-key *global-keymap* "C-x l" 'start-lisp-repl)


(bindkey "C-b" delete-previous-char)
(bindkey "C-u" undo)
(bindkey "C-r" redo)
(load #P"~/dotfiles/lem/modes/10-vi.lisp")
(load #P"~/dotfiles/lem/modes/10-paredit.lisp")
(load #P"~/dotfiles/lem/modes/10-auto-save.lisp")

(lem-vi-mode:vi-mode)
(define-key lem-vi-mode:*insert-keymap* "j k" 'lem-vi-mode.commands:vi-end-insert)

(defun foo (x)
  (mapcar #'(lambda (x) (bar x))
          (loop for i below 10 collect i)))
