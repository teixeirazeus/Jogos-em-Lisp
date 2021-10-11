; Thiago S. Teixeira <teixeira.zeus@gmail.com>

(defun printNreturn (value)
    (format t value)
    value)

(defun get-number ()
    (let ((number (random 2 (make-random-state t))))
        (if (= number 0)
        (printNreturn "Cara!")
        (printNreturn "Coroa!"))))

(defun prompt ()
    (format t "Digite cara ou coroa: ")
    (defvar chute (string-downcase (read)))
    (if (equal chute "cara")
        "Cara!"
        (if (equal chute "coroa")
            "Coroa!")))

(defun game ()
    (if (string= (prompt) (get-number))
    (format t "Você ganhou!")
    (format t "Você perdeu!")))

(game)