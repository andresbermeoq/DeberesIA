(defrule tipo-robot-regla
(initial-fact)
=>
(printout t "INGRESE TIPO ROBOT 1 (peaton/carro)? " crlf)
(assert (tipo-robot (read)))
)

(defrule semaforo-tipo
(or  (tipo-robot peaton) (tipo-robot carro))
=>
(printout t "Ingrese color del semaforo" crlf)
(printout t "rojo/verde/amarillo" crlf)
(assert (semaforo (read)))
)

(defrule pasar
(tipo-robot ?tipo)
(or (and (tipo-robot carro) (semaforo verde)) (and (tipo-robot peaton) (semaforo rojo)))
=>
(printout t "El robot " ?tipo " puede pasar" crlf)
)

(defrule precaucion
(tipo-robot ?tipo)
(semaforo amarillo)
=>
(printout t "El robot " ?tipo " pasar con precaucion " crlf)
)

(defrule esperar
(tipo-robot ?tipo)
(or (and (tipo-robot carro) (semaforo rojo)) (and (tipo-robot peaton) (semaforo verde)))
=>
(printout t "El robot " ?tipo " no puede pasar debe esperar" crlf)
)
