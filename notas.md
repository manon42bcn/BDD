

Espero haberte entendido, ¿Quieres ver cada elemento de tu array de JSONs y detectar si en cualquier lugar existe una palabra en específico (tomando en cuenta hasta las propiedades del objeto)? En ese caso lo que podrías hacer es parsear tu JSON a un array para iterar sobre el y luego tratar cada entrada como si fuese una string para ver si se encuentra una coincidencia, algo así:

import json

datos = '[ { "DATAID":"6908409", "VERSIONNUM":"1", "FIRST_NAME":"Spiderman", "UN_LIST_TYPE":"Example List", "LISTED_ON":"23\/09\/2014", "SUBMITTED_ON":"", "NAME_ORIGINAL_SCRIPT":"", "COMMENTS1":"Example comment to seach, Rambo is here", "ENTITY_ADDRESS":[ { "STREET":"", "CITY":"", "STATE_PROVINCE":"", "ZIP_CODE":"", "COUNTRY":"", "NOTE":"" } ], "ENTITY_ALIAS":[ { "QUALITY":"as.e.e.", "ALIAS_NAME":"Example Alias 1" }, { "QUALITY":"aa.w.w.", "ALIAS_NAME":"Superman" } ], "LAST_DAY_UPDATED":[ { "VALUE":"06\/12\/2019" } ] }, { "DATAID":"64571", "VERSIONNUM":"1", "FIRST_NAME":"Spiderman", "UN_LIST_TYPE":"Example List", "LISTED_ON":"23\/09\/2014", "SUBMITTED_ON":"", "NAME_ORIGINAL_SCRIPT":"", "COMMENTS1":"Example comment to seach, Rambo is here", "ENTITY_ADDRESS":[ { "STREET":"", "CITY":"", "STATE_PROVINCE":"", "ZIP_CODE":"", "COUNTRY":"", "NOTE":"" } ], "ENTITY_ALIAS":[ { "QUALITY":"as.e.e.", "ALIAS_NAME":"Example Alias 1" }, { "QUALITY":"aa.w.w.", "ALIAS_NAME":"Batman" } ], "LAST_DAY_UPDATED":[ { "VALUE":"06\/12\/2019" } ] }]'

#Parseamos el array de jsons
datosArray = json.loads(datos);

#Hacemos nuestra funcion para buscar una palabra en un JSON dentro de un array
def buscarPalabraPorEntrada( arrayDatos, objetivo):
    #Recorremos nuestro array de entradas
    for entrada in arrayDatos:
        #Utilizamos json.dumps para convertir la entrada en una string y usar find
        #Usanos lower() para que no importe la capitalizacion de letras y ampliar la busqueda
        if( json.dumps(entrada).lower().find(objetivo.lower()) != -1):
            print(f"Se encontró la palabra {objetivo} en la entrada con DATAID:{entrada['DATAID']}")
        else:
            print(f"No se encontró la palabra {objetivo} en la entrada con DATAID:{entrada['DATAID']}")
        
buscarPalabraPorEntrada(datosArray,"superman");
Compartir
Mejora esta respuesta
Seguir
respondida el 5 jun. 2021 a las 16:33
user avatar
FranAcuna
4,08311 medalla de oro66 medallas de plata1919 medallas de bronce
Añade un comentario

0

Viendo que simplemente quieres saber si un string existe en el json (que esta como string...) podrías resolverlo de la siguiente manera:

Prueba1:

search = "[{...}]" 
search = search.lower()
searchWord = "batman"
if searchWord in search:
   print("encontrado")
else:
  print("no encontrado")
#Resultado: no encontrado
Prueba 2:

search = "[{...}]" 
search = search.lower()
searchWord = "superman"
if searchWord in search:
   print("encontrado")
else:
  print("no encontrado")
#Resultado: encontrado
ta-da~ y eso es todo...

Ahora unos cuantos puntos sobre tu código:

1) search.count(searchWord) devuelve el numero de ocurrencias del string searchWord en search, es decir, el uso que le diste a count() fue el correcto pues devolverá un int con la cantidad de ocurrencias.

2) search.find(searchWord), este método devuelve el indice de la primera ocurrencia del string searchWord en search funciona idéntico al método index() con la diferencia de que find() no arrojara un error si el valor no es encontrado (en cambio dará un -1), de igual forma, fue usado correctamente.

3) json.loads(search) , este método del modulo json devuelve un diccionario o lista dado un string, por tanto la debe ser tratado como estos, en tu caso los objetos están dentro de un arreglo, al hacer if searchWord in search: lo que estas es comprobando si en el arreglo superior (que solo tiene un elemento) hay elemento que coincida con searchWord.