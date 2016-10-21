/******************************************************************************

 File Name               : DISPLAY.c

 Date                    : 24/11/2008  02:54:02

 Author                  : sylvain

 Atelier-B Version       : 4.0-beta

 C Translator Version    : b2c V1.0 (08/08/2007)

 B Project Name          : Streamlined_Safer

******************************************************************************/

/*--------------------------
   Added by the Translator
  --------------------------*/
#include <stdbool.h>
#include "DISPLAY.h"

/*-----------------
   IMPORTS Clause
  -----------------*/
#include "BASIC_IO.h"

/*------------------------
   INITIALISATION Clause
  ------------------------*/
void DISPLAY__INITIALISATION(void) {
}

/*--------------------
   OPERATIONS Clause
  --------------------*/
void DISPLAY__display_menu(void) {
   BASIC_IO__STRING_WRITE ("0 Quit");
   BASIC_IO__STRING_WRITE ("1 Switch ON\n");
   BASIC_IO__STRING_WRITE ("2 Switch OFF\n");
   BASIC_IO__STRING_WRITE ("3 Move Forward\n");
   BASIC_IO__STRING_WRITE ("4 Move Backward\n");
}



