



pinzel = [0.6, 0.3, 0.4]
bw = 0.5
lista = [44,11,15,29,53,12,30]

def ejercicio1(pinzel):
    print(sum(pinzel)/len(pinzel))


def ejercicio2(color):
    if color >= 0.5:
        print('Negro')
    else:
        print('Blanco')

def ejercicio3(lista):
    maximo = 0
    for i in lista:
        maximo = i > i+1
        print(maximo)



ejercicio3(lista)


