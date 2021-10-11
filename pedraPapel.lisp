; Thiago S. Teixeira <teixeira.zeus@gmail.com>
; rock, paper and scissors

(defun gen_choice ()
    (let ((number (random 3 (make-random-state t))))
    (cond ((= number 0) "pedra")
          ((= number 1) "papel")
          ((= number 2) "tesoura"))))

(defun input(string)
    (format t string)
    (string-downcase (read)))

(defun get_user_choice ()
    (let ((choice (input "Escolha pedra, papel ou tesoura: ")))
    (cond ((string= choice "pedra") "pedra")
          ((string= choice "papel") "papel")
          ((string= choice "tesoura") "tesoura")
          (t (get_user_choice)))))

(defun game()
    (defvar user_choice (get_user_choice))
    (defvar robot_choice (gen_choice))
    (format t "Usuario: ~A~%" user_choice)
    (format t "Robo: ~A~%" robot_choice)
    (format t "~A~%" (cond ((string= user_choice robot_choice) "Empate")
          ((or (and (string= user_choice "papel") (string= robot_choice "pedra"))
          (and (string= user_choice "pedra") (string= robot_choice "tesoura"))
          (and (string= user_choice "tesoura") (string= robot_choice "papel"))) "Você ganhou!")
          (t "Você perdeu!"))))

(game)