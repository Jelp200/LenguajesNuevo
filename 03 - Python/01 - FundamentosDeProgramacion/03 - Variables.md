# VARIABLES EN PYTHON :snake:
En Python como en cualquier otro lenguaje de programación las variables son una parte muy importante para poder programar, las variables en la programación como en las matemáticas tienen un rol de carcasa, dicha carcasa guarda un valor deseado dentro de ella y este valor puede o no ser modificado a través del programa. Para poder declarar variables de manera correcta es necesario cuidar la sintaxis, semántica y no incluir simbolos tales como "!", "?", "#", etc., para ello véase como poder declarar variables con una sintaxis correcta de la siguiente forma:

- <b><i>Manera correcta</i></b>: "miVariable", "Mi_Variable2", "miVariable3", "MiVariable4".
- <b><i>Manera incorrecta</i></b>: "m!Variabl3", "Mi Variable2", "M1_Variabl 3", "#M1Variab13".

Dentro Python a comparacion de otros lenguajes de programación no es necesario definir el tipo de variable con el cual se va a trabajar, esto ya que python infiere el tipo de variable en la ejecución:


Lo anterior puede visualizarse cómo:
```py
'''
** #########################################################################################
**      Archivo: 03 - Variables.py
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
'''

nombreVariable = valor
```

En python, acada vez que se crea una variable y se le asigna un valor, se reserva un espacio en la RAM (Memoria de acceso aleatorio) en código hexadecimal. Y de igual forma estas variables al iferirse en la ejecución del programa se puede decir que se comportan como variables dinamicas. Por ejemplo, si se tiene una variable denominada "numero" con un valor númerico 1, es posible modificar su valor numerico a un valor string.
```py
'''
** #########################################################################################
**      Archivo: 03 - Variables.py
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
'''
# Valor inicial
numero = 1                  # Imprime "1" en la consola

# Valor final
numero = 'uno'              # Imprime "uno" en la consola
```

## CONSTANTES.
Aunque en python no existen como tal las constantes, hay una convención la cual permite declarar variables para que dentro del código el programador vea que dichas variables son constantes.
```py
'''
** #########################################################################################
**      Archivo: 03 - Variables.py
**      SO: Windows 10
**      Herramienta: Visual Studio Code
** #########################################################################################
'''
# Constante
NOMBRE_DE_LA_CONTANTE = valor
```

Regresar al menú de fundamentos <a href="../01 - FundamentosDeProgramacion/00 - Fundamentos.md">Click aquí</a>.