            IDENTIFICATION DIVISION.
            PROGRAM-ID. PRGMATEM.
            ENVIRONMENT DIVISION.
              CONFIGURATION SECTION.
                 SPECIAL-NAMES.
                    DECIMAL-POINT IS COMMA.
            DATA DIVISION.
            FILE SECTION.
            WORKING-STORAGE SECTION.
                  01 WS-NUMEROS.
                  03 WS-SOMA           PIC S9(05)V99. 
                  03 WS-MULTI          PIC S9(05)V99.
                  03 WS-DIVIDO         PIC S9(05)V99.
                  03 WS-SUBTR          PIC S9(05)V99.
                  03 WS-N1             PIC S9(03)V99.
                  03 WS-N2             PIC S9(03)V99.
                  03 WS-MOSTRA-NUM     PIC $ZZ.ZZ9,99.
                  
            PROCEDURE DIVISION.
              P001-PRINCIPAL.
              DISPLAY "**** PROGRAMA DE CALCULO ****"
                 INITIALIZE WS-NUMEROS

                 DISPLAY 'INFORME O PRIMEIRO NUMERO:'
                 ACCEPT WS-N1

                 DISPLAY 'INFORME O SEGUNDO NUMERO:'
                 ACCEPT WS-N2
                 *******************************************************
                 **      CALCULA A SOMA DOS NUMEROS                   **
                 *******************************************************

                 MOVE ZEROS                   TO WS-SOMA
                 COMPUTE WS-SOMA = WS-N1 + WS-N2
                 MOVE WS-SOMA                 TO WS-MOSTRA-NUM
                 DISPLAY 'O Resultado da SOMA é: ' WS-MOSTRA-NUM

                 *******************************************************
                 **      CALCULA A SUBTRAÇÃO DOS NUMEROS              **
                 *******************************************************

                 MOVE ZEROS                   TO WS-SUBTR
                 COMPUTE WS-SUBTR = WS-N1 - WS-N2
                 MOVE WS-SUBTR                 TO WS-MOSTRA-NUM
                 DISPLAY 'O Resultado da SUBTRAÇÃO é: ' WS-MOSTRA-NUM

                 *******************************************************
                 **      CALCULA A MULTIPLICAÇÃO DOS NUMEROS          **
                 *******************************************************

                 MOVE ZEROS                   TO WS-MULTI
                 COMPUTE WS-MULTI = WS-N1 * WS-N2
                 MOVE WS-MULTI                 TO WS-MOSTRA-NUM
                 DISPLAY 'O Resultado da MULTIPLI é: ' WS-MOSTRA-NUM

                 *******************************************************
                 **      CALCULA A DIVISÃO DOS NUMEROS                **
                 *******************************************************

                 MOVE ZEROS                     TO WS-DIVIDO
                 COMPUTE WS-DIVIDO = WS-N1 / WS-N2
                 MOVE WS-DIVIDO                 TO WS-MOSTRA-NUM
                 DISPLAY 'O Resultado da DIVISÃO é:' WS-MOSTRA-NUM
                 
              STOP RUN.
              END PROGRAM PRGMATEM.
