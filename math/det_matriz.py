from random import randint


def determinante(matriz):
    ordem = len(matriz)
    matriz_sec = []
    y = []

    if ordem == 1:
        det = matriz[0][0]

    if ordem == 2:
        pri = matriz[0][0]*matriz[1][1]
        sec = matriz[0][1]*matriz[1][0]
        det = pri - sec

    if ordem > 2:
        i = len(matriz) - 1
        for l in range(ordem):
            matriz_sec.append(matriz[l][:i])

        
                

    print(f'Daterminante da matriz: {det}')    

def det_matriz(ordem):
    matriz = []
    m = []
    x = 0
    for c in range(ordem):
        for l in range(ordem):
            x = randint(0,10)
            m.append(x)
        matriz.append(m[:])
        m.clear()
    
    print('Matriz: ')
    for l in range(ordem):
        for c in range(ordem):
            print(matriz[l][c], end=' ') 
        print()  
    
    determinante(matriz)


det_matriz(3)
