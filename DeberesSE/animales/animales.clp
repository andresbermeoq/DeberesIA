(deffacts hechos-iniciales
(tiene-pelos)
(tiene-pezunias)
(tiene-rayas-negras)
)

(defrule mamifero-1
(tiene-pelos)
=>
(assert (es-mamifero))
)

(defrule mamifero-2
(da-leche)
=>
(assert (es-mamifero))
)

(defrule ungulado-1
(es-mamifero)
(tiene-pezunias)
=>
(assert (es-ungulado))
)

(defrule ungulado-2
(es-mamifero)
(rumia)
=>
(assert (es-ungulado))
)

(defrule jirafa
(es-ungulado)
(tiene-cuello-largo)
=>
(assert (es-jirafa))
)

(defrule cebra
(es-ungulado)
(tiene-rayas-negras)
=>
(assert (es-cebra))
)
(defrule es_vertebrado ""
	(esqueleto si)
	=>
	(assert (clasificacion vertebrado)))

(defrule es_invertebrado ""
	(esqueleto no)
	=>
	(assert (clasificacion invertebrado)))

(defrule es_viviparo ""
	(huevo no)
	=>
	(assert (reproduccion viviparo)))

(defrule es_oviparo ""
	(vientre no)
	=>
	(assert (reproduccion oviparo)))

	
(defrule es_herbivoro ""
	(come_carne no)
	=>
	(assert (alimentacion herbivoro)))
	
(defrule es_carnivoro ""
	(come_plantas no)
	=>
	(assert (alimentacion carnivoro)))

(defrule es_omnivoro ""
	(come_plantas si)
	(come_carne si)
	=>
	(assert (alimentacion omnivoro)))
	

(defrule es_volador ""
	(puede_volar si)
	=>
	(assert (movimiento volar)))
	
(defrule es_nadador ""
	(puede_nadar si)
	=>
	(assert (movimiento nadar)))
	
(defrule es_trepador ""
	(puede_trepador si)
	=>
	(assert (movimiento reptar)))



(defrule Aguila ""
	(clasificacion vertebrado) 
	(alimentacion carnivoro)
	(reproduccion oviparo)
	(movimiento volar)
	=>
	(assert (especie "Tu animal es un aguila"))
)

(defrule Ardilla ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es ardilla"))
)

(defrule Castor ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un castor."))
)

(defrule Cerdo ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es cerdo."))
)

(defrule Chimpance ""
	(clasificacion vertebrado)
	(alimentacion omnivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un chimpance."))
)

(defrule Ciempies ""
	(clasificacion invertebrado)
	(alimentacion omnivoro)
	(reproduccion oviparo)
	(movimiento reptar)
	=>
	(assert (especie "es un ciempies."))
	)

(defrule Ciervo ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un ciervo."))
)

(defrule Ciguenia ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion oviparo)
	(movimiento volar)
	=>
	(assert (especie "es una ciguenia."))
)

(defrule Cisne ""
	(clasificacion vertebrado)
	(alimentacion omnivoro)
	(reproduccion oviparo)
	(movimiento andar)
	=>
	(assert (especie "es cisne."))
)

(defrule Cocodrilo ""
	(clasificacion vertebrado)
	(alimentacion carnivoro)
	(reproduccion oviparo)
	(movimiento reptar)
	=>
	(assert (especie "es un cocodrilo."))
)
(defrule Armadillo ""
	(clasificacion vertebrado)
	(alimentacion omnivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es armadillo"))
)

(defrule Asno ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un asno"))
)

(defrule Atun ""
	(clasificacion vertebrado)
	(alimentacion carnivoro)
	(reproduccion oviparo)
	(movimiento nadar)
	=>
	(assert (especie "es un atun"))
)

(defrule Ballena ""
	(clasificacion vertebrado)
	(alimentacion carnivoro)
	(reproduccion viviparo)
	(movimiento nadar)
	=>
	(assert (especie "es una ballena"))
)

(defrule Beluga ""
	(clasificacion vertebrado)
	(alimentacion carnivoro)
	(reproduccion viviparo)
	(movimiento nadar)
	=>
	(assert (especie "es una beluga"))
)

(defrule Bufalo ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un bufalo"))
)

(defrule Buho ""
	(clasificacion vertebrado)
	(alimentacion carnivoro)
	(reproduccion oviparo)
	(movimiento volar)
	=>
	(assert (especie "es un buho"))
)

(defrule Caballito_de_mar ""
	(clasificacion invertebrado)
	(alimentacion carnivoro)
	(reproduccion oviparo)
	(movimiento nadar)
	=>
	(assert (especie "es un caballito de mar")))

(defrule Caballo ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un caballo"))
)

(defrule Cabra ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es una cabra"))
)

(defrule Calamar ""
	(clasificacion invertebrado)
	(alimentacion carnivoro)
	(reproduccion oviparo)
	(movimiento nadar)
	=>
	(assert (especie "es un calamar."))
)

(defrule Camaleon ""
	(clasificacion vertebrado)
	(alimentacion carnivoro)
	(reproduccion oviparo)
	(movimiento reptar)
	=>
	(assert (especie "es un camaleon."))
)

(defrule Camello ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un camello."))
)

(defrule Cangrejo ""
	(clasificacion invertebrado)
	(alimentacion omnivoro)
	(reproduccion oviparo)
	(movimiento andar)
	(vive_wajo_mar si)
	=>
	(assert (especie "es un cangrejo.")))

(defrule Canguro ""
	(clasificacion vertebrado)
	(alimentacion herbivoro)
	(reproduccion viviparo)
	(movimiento andar)
	=>
	(assert (especie "es un canguro."))
)

(defrule Caracol ""
	(clasificacion invertebrado)
	(alimentacion herbivoro)
	(reproduccion oviparo)
	(movimiento reptar)

	=>
	(assert (especie "es un caracol."))
)
