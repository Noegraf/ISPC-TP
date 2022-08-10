"""
1) Crear una lista en Python denominada “Dueno” que contenga los siguientes valores:
	28957346,  Juan,  Perez, 4789689,  Belgrano 101
  Dichos datos se corresponden  con los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección).
  Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.
"""
tel_dueno = 4789689
dni_dueno = 28957346
nombre_dueno = "Juan"
apellido_dueno = "Perez"
direccion_dueno =  "Belgrano 101"

dueno = [ dni_dueno,  nombre_dueno,  apellido_dueno, tel_dueno, direccion_dueno ]




if dni_dueno > 26000000:print(tel_dueno)