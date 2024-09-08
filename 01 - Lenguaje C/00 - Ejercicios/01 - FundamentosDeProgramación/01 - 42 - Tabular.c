/*
** #########################################################################################
**  Archivo         : 01 - 42 - Tabular.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**              Realizar un programa el cual tabule de forma ascendente  la siguiente función:
**                                  f(x) = 3.5x - sen(x)
**              Se debera pedir el limite inferior, superior y el incremento. El programa
**              verificara que el inicio sea menor o igual que el final y que el incremento
**              sea positivo, en caso de error se debera mandar los mensajes correspondi_
**              entes.
**
**              Puede utilizarse un ciclo for, while o do-while para resolver la parte de la
**              tabulación.
**
**              No utilizar funciones y tener un solo return.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>
#include <math.h>

// VARIABLES GLOBALES
float limite_inferior, limite_superior, incremento, x, fx;

// FUNCION PRINCIPAL
int main() {
    // Pedir al usuario el límite inferior
    printf("Ingrese el limite inferior: ");
    scanf("%f", &limite_inferior);

    // Pedir al usuario el límite superior
    printf("Ingrese el limite superior: ");
    scanf("%f", &limite_superior);

    // Pedir al usuario el incremento
    printf("Ingrese el incremento: ");
    scanf("%f", &incremento);

    // Verificar que el límite inferior sea menor o igual que el límite superior
    if((limite_inferior >= limite_superior) && (incremento <= 0)){
        printf("Error: El limite inferior debe ser menor o igual que el limite superior, y el incremento debe ser positivo.\n");
        goto fin;
    }else{
        if(limite_inferior <= limite_superior){
            // Verificar que el incremento sea positivo
            if(incremento > 0){
                // Tabulación de la función
                printf("\nTabulacion de la funcion f(x) = 3.5x - sen(x)\n");
                printf("x\t|\tf(x)\n");
                printf("------------------------\n");

                for(x = limite_inferior; x <= limite_superior; x += incremento){
                    fx = 3.5 * x - sin(x);
                    printf("%.5f\t%.5f\n", x, fx);
                }
            }else{
                printf("Error: El incremento debe ser positivo.\n");
                goto fin;
            }
        }else{
            printf("Error: El limite inferior debe ser menor o igual que el límite superior.\n");
            goto fin;
        }
    }

    // Terminar el programa correctamente
    fin:
        return 0;
}
