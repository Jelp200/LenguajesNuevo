# CADENAS EN PY :snake:
En Python el manejo de cadenas o strings es muy importante, es por ello que es posible hacer operaciones con ellas.

## Concatenación de cadenas.
La concatenación de cadenas es una operación la cual permite combinar dos o más cadenas para formar una nueva, las dos formas más comúnes son:

- <i><b>Uso del operador "+"</b></i>: El operador "+" permite de forma más directa concatenar diferentes cadenas.
- <i><b>Uso de la función join</b></i>: La función "join" permite unir tantas cadenas deseemos. Para ello solo es necesario pasar cada cadena como parametro de la función, siempre separado por una coma.

```py
'''
** #########################################################################################
**      Archivo: 05 - CadenasStrings.py
**      SO: Windows 11
**      Herramienta: Visual Studio Code
** #########################################################################################
'''

# Operador "+"
cadena_1 = "Hola"
cadena_2 = " Mundo"
conca_1 = cadena_1 + cadena_2
print(conca_1)

# Función join
cadena_3 = "GRADUS"
cadena_4 = " "
cadena_5 = "TEC"
conca_2 = ''.join([cadena_3, cadena_4, cadena_5])
```

## Formateo de cadenas.
El formateo de cadenas permite concatenar tanto texto, variables e incluso otro tipo de formateo en una cadena, para ello se tienen dos metodos.

- <i><b>f-string</b></i>: Siendo la opción más actual y recomendada ya que es más sencilla, rápida y legible.
- <i><b>Método format</b></i>: Siendo la opción más versatil y poderosa permite construir cadenas muy complejas.

```py
'''
** #########################################################################################
**      Archivo: 05 - CadenasStrings.py
**      SO: Windows 11
**      Herramienta: Visual Studio Code
** #########################################################################################
'''

escuela = "ESIME - Z"
institucion = "IPN"
edad = "24"

# f-string
msj_1 = f'Soy alumno de la {escuela} del {institucion} y tengo {edad}'
print(msj_1)

# Format
msj_2 = 'Soy alumno de la {} del {} y tengo {}'.format(escuela, institucion, edad)
```

## Métodos de cadenas.
Dentro de Python existen varios métodos los cuales permiten manipular las cadenas de caracteres, las más comúnes son:

- <i><b>upper()</b></i>: Cambia las letras a mayúsculas.
- <i><b>lower()</b></i>: Cambia las letras a minúsculas.
- <i><b>strip()</b></i>: Elimina espacios en blanco al inicio y al final.

```py
'''
** #########################################################################################
**      Archivo: 05 - CadenasStrings.py
**      SO: Windows 11
**      Herramienta: Visual Studio Code
** #########################################################################################
'''

cadena_1 = "Hola a todos"
print(f"Cadena original {cadena_1}")

# Upper
toUpper = cadena_1.upper()
print(f"Cadena en mayúsculas: {toUpper}")

# Lower
print(f'Cadena en minúsculas: {cadena_1.lower()}')

cadena_2 = " Espacio inicio, espacio final "
print(cadena_2)

# Strip
print(cadena_2.strip())
```

## Largo de una cadena.
Para poder medir la longitud de una una cadena en Pythoon se tiene la función <i><b>len()</b></i>, esta función no solo permite trabajar con cadenas, sino, tambien con listas, tuplas, etc.

Al momento de calcular el largo una cadena se toman en cuenta todos los caracteres que la conforman, incluyendo espacios en blanco, caracteres especiales, etc. 

```py
'''
** #########################################################################################
**      Archivo: 05 - CadenasStrings.py
**      SO: Windows 11
**      Herramienta: Visual Studio Code
** #########################################################################################
'''

cadena_1 = "Hola a todos"
largoCadena = len(cadena_1)

print(f'{cadena_1}')
print(f'{largoCadena}')
```

## Subcadenas.
Una subcadena como su nombre lo indica, es una cadena la cual es parte de otra más grande o principal, y hay varias formas de extraer, buscar, reemplazar, separar, entre otras, dicha subcadena.

- <i><b>Extracción (Slicing)</b></i>: La segmentación de cadenas o slicing permite indicar el índice de incio y final (sin incluir el ultimo caracter), y extraer esa subcadena en cuestión.
- <i><b>Busqueda (Find)</b></i>: El método <i><b>find()</b></i> devuelve el índice de la primera aparición de la subcadena. Si no encuentra la subcadena, devuelde -1.
- <i><b>Remplazo (Replace)</b></i>: El método <i><b>replace()</b></i> permite reemplazar una subcadena por otra dentro de la cadena principal.
- <i><b>Extracción (Split)</b></i>: El método <i><b>split()</b></i> permite dividir una cadena en una lista de subcadenas basadas en un caracter separador.
- <i><b>Multiplicación</b></i>.

```py
'''
** #########################################################################################
**      Archivo: 05 - CadenasStrings.py
**      SO: Windows 11
**      Herramienta: Visual Studio Code
** #########################################################################################
'''

cadena_1 = "Hola a todos!"

# Slicing
extraer = cadena_1[0 : 3]

# Find
buscar_1 = cadena_1.find("todos")     # Devuelve 6
buscar_2 = cadena_1.find("Todos")     # Devuelve -1

# Replace
nuevaCadena = cadena_1.repalce("Hola", "Adios")

cadena_2 = "IPN ESIME Z ELECTRONICA"

# Split
lista_1 = cadena.split()              # Por default separa cada elemento por espacios en blanco
lista_2 = cadena_2.split(',')

# Multiplicación
multiplicacion = cadena_2 * 4
# IPN ESIME Z ELECTRONICAIPN ESIME Z ELECTRONICAIPN ESIME Z ELECTRONICAIPN ESIME Z ELECTRONICA
```