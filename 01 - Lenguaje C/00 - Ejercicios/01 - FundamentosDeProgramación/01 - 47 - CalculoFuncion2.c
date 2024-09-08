/*
** #########################################################################################
**  Archivo         :   01 - 47 - CalculoFuncion2.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**                      Realizar un programa que pida por teclado dos números para poder
**                      calcular la siguiente función:
**                                      f(x) = sqrt(3x - 6y) / (-8a + 5b)
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>
#include <math.h>
#include <complex.h>

// VARIABLES GLOBALES
double x = 0, y = 0, a = 0, b = 0;
double complex num = 0, den = 0, fx = 0;

// FUNCION PRINCIPAL
int main(){
    while(1){
        // Solicitar al usuario los valores de x, y, a y b
        printf("Ingrese el valor de x: "); scanf("%lf", &x);

        printf("Ingrese el valor de y: "); scanf("%lf", &y);

        printf("Ingrese el valor de a: "); scanf("%lf", &a);

        printf("Ingrese el valor de b: "); scanf("%lf", &b);

        // Calcular el numerador y denominador
        num = csqrt(3 * x - 6 * y);
        den = -8 * a + 5 * b;

        // Verificar que el denominador no sea 0
        if(creal(den) != 0 || cimag(den) != 0){
            // Calcular el resultado
            fx = num / den;

            // Mostrar el resultado
            if (cimag(fx) == 0){
                printf("El resultado de la funcion es: %.5lf\n", creal(fx));
            }else{
                printf("El resultado de la funcion es: %.5lf + %.5lfi\n", creal(fx), cimag(fx));
            }
            break; // Salir del ciclo
        }else{
            system("cls");
            printf("Error: El denominador es 0. Intentelo de nuevo.\n");
            system("pause");
            system("cls");
        }
    }

    return 0;
}