#---Maira Gonzalez TSDWAD.

#---Ejercicio N7 de Python.


Historial3 =(9530, 4120, 4580, 1500, 890, 7516, 426)

suma = 0

for valor in Historial3:
    suma = suma + valor

print(f"La suma es {suma}")


# Y el promedio se obtiene dividiendo la suma entre la cantidad de elementos
cantidad_elementos = len(Historial3)
promedio = suma / cantidad_elementos


if promedio > 4500:
    print("se ha exedido del gasto promedio para su mascota")
else:
    print(f"El promedio es {promedio}")
