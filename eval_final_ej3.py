"""
3)  Crear un lista en Python denominado “Perro” que contenga los siguientes
 valores:

  13,  Puppy,  12/12/2012 , Macho, 123

Que se corresponde con los datos de un perro de nuestra base de datos
 (Id_Perro, nombre, fecha de nacimiento, sexo y dni del dueño).
  Modificar la fecha de nacimiento por 13/12/2012 y
   reemplazar “dni del dueño” por 28957346 .

"""

from datetime import date

Id_perro = 13
nombre_perro = "Puppy"
fecha_nac_perro = date(2012, 12, 12)
sex_perro = "Macho"
dni_dueno = 123

perro = [Id_perro, nombre_perro, fecha_nac_perro, sex_perro, dni_dueno]

perro [2] = fecha_nac_perro.replace(day= 13)

perro [4] = 28957346

print(perro)



