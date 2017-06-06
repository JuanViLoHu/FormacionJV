# language: es
Característica: Mostrar juegos
Para evitar errores al mostrar juegos
Como un usuario
Yo Quiero probar todas las funcionalidades de la pagina de juegos

Escenario: Mostrar todos los juegos
Dado que estoy en la pagina de juegos
Entonces debería ver "Listado de juegos"

Escenario: Mostrar juego
Dado que estoy en la pagina de juegos
Cuando clickeo "Visualizar"
Entonces debería estar en la pagina de mostrar juego

Escenario: Editar juego
Dado que estoy en la pagina de juegos
Cuando clickeo "Editar"
Entonces debería estar en la pagina de editar juego

#Escenario: Eliminar juego
#Dado que estoy en la pagina de juegos
#Cuando clickeo "Eliminar"
#Entonces debería estar en la pagina de editar juego

Escenario: Nuevo juego
Dado que estoy en la pagina de juegos
Cuando clickeo "Nuevo Juego"
Entonces debería estar en la pagina de nuevo juego

