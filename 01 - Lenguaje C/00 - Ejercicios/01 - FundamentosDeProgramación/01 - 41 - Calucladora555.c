/*
** #########################################################################################
**  Archivo         : 01 - 41 - Calculadora555.c
**  Proyecto        :   Lenaguajes
**  Herramienta(s)  :   Visual Studio Code
**  Compilador      :   C/C++ Compiler
**  Autores         :
**                      Jelp 200
**  Descripcion     :
**              Realizar un programa en el cual el usuario pueda calcular los valores para
**              las diferentes configuraciones del 555.
** #########################################################################################
*/

// DIRECTIVAS DE PREPOCESADOR
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

// VARIABLES GLOBALES
int opc, n;

float T = 0, th = 0, tl = 0;
float R1 = 0, R2 = 0, C = 0;

// PROTOTIPO(S) DE FUNCION(ES)
void clear(){
    system("cls || clear");
}
void pausa(){
    printf("\n\tEspere un momento...");
    sleep(5);
}

void Entrada();
void Menu();
float Astable();

// FUNCION PRINCIPAL
int main(){
    Entrada();
    return EXIT_SUCCESS;
}

// FUNCION(ES)
void Entrada(){
    puts("-------------");
    puts("|           |	\"CALCULADORA 555\"");
    puts("|           |	- ASTABLE");
    puts("|  5  5  5  |	- MONOESTABLE");
    puts("|           |	- BIESTABLE");
    puts("|           |");
    puts("-------------	GRADUS TECH | 2024");
    pausa();
    Menu();
}


void Menu(){
    do{
        clear();
        puts("******** MENU CALCULADORA 555 ********");
        puts("\t1.- Astable.");
        puts("\t2.- Monoestable.");
        puts("\t3.- Biestable.");
        puts("\t0.- Salir.");
        printf("\n\tDe una opcion: "); scanf("%i", &opc);
        switch (opc){
            case 0:
                clear();
                puts("\n\tHasta la proxima...");
                pausa();
                break;
            case 1:
                Astable();
                break;
            case 2:
                Astable();
                break;
            case 3:
                Astable();
                break;
            default:
                clear();
                printf("\tDe una opcion correcta...");
                pausa();
                break;
        }
    }while (opc != 0);
    
}

float Astable(){
    clear();
    puts("--|___|---|___| ASTABLE ---|___|---|___ ");
    puts("\t1.- Ciclo de trabajo.");
    puts("\t2.- Calc. R1.");
    puts("\t3.- Calc. R2.");
    puts("\t4.- Clac. C.");
    puts("\t0.- Regresar.");
    printf("\n\tDe una opcion: "); scanf("%i", &opc);
    switch (opc){
        case 0:
            Menu();
            break;
        case 1:
            clear();
            printf("\tDe el tiempo en alto [seg]: "); scanf("%f", &th);
            printf("\tDe el tiempo en bajo [seg]: "); scanf("%f", &tl);
            T = th + tl;
            printf("\tEl tiempo es de: %.2f [seg]", T);
            printf("\n\tEl tiempo en alto es de: %f [seg]", th);
            printf("\n\tEl tiempo en bajo es de: %f [seg]", tl);
            pausa();
            Astable();
            break;
        case 2:
            clear();
            printf("\tTh = %f ; Tl = %f, T = %f", th, tl, T);
            printf("\n\n\tDe el valor de R1 (PROPUESTA): "); scanf("%f", &R2);
            printf("\tDe el valor del C (PROPUESTO en uF): "); scanf("%f", &C);
            C *= pow(10, -6); 
            R1 = (th / (0.693 * C)) - R2;
            printf("\tEl valor de la restistencia es de: %f [ohms]", R1);
            pausa();
            Astable();
            break;
        case 3:
            clear();
            printf("\tTh = %f ; Tl = %f, T = %f", th, tl, T);
            printf("\tDe el valor del C (PROPUESTO en uF): "); scanf("%f", &C);
            C *= pow(10, -6); 
            R2 = tl / (0.693 * C);
            printf("\tEl valor de la restistencia es de: %.2f [ohms]", R2);
            pausa();
            Astable();
            break;
        case 4:
            clear();
            printf("\tTh = %f ; Tl = %f, T = %f", th, tl, T);
            printf("\n\n\tDe el valor de R1 (PROPUESTA): "); scanf("%f", &R1);
            printf("\tDe el valor de R2 (PROPUESTA): "); scanf("%f", &R2); 
            C = th / (0.693 * (R1 + R2));
            printf("\tEl valor deL capacitor es de: %f [F]", R1);
            pausa();
            Astable();
            break;
        default:
            break;
        }
}

