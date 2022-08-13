"""
4)      Crear un lista en Python denominado “Perro2” que contenga los siguientes valores:

      14,  Fido,  12/12/2012 , Macho, 23546987

Recorrer la lista “Perro” con un bucle y mostrar sus elementos por pantalla ,
 comenzando desde el último hasta el primero.
"""




from datetime import date

Id_perro = 14
nombre_perro = "Fido"
fecha_nac_perro = date(2012, 12, 12)
sex_perro = "Macho"
dni_dueno = 23546987

perro = [Id_perro, nombre_perro, fecha_nac_perro, sex_perro, dni_dueno]

perro.reverse()

for x in perro:
  print(x)

 