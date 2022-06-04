            IDENTIFICATION DIVISION.
            PROGRAM-ID. PRGMATEM.
            ENVIRONMENT DIVISION.
            DATA DIVISION.
            FILE SECTION.
            WORKING-STORAGE SECTION.
                  01 WS-NUMEROS.
                  03 WS-SOMA           PIC 9(10)V99. 
                  03 WS-MULTI          PIC 9(05)V99.
                  03 WS-DIVIDO         PIC 9(05)V99.
                  03 WS-SUBTR          PIC 9(05)V99.
                  03 WS-N1             PIC 9(03)V99.
                  03 WS-N2             PIC 9(03)V99.


            PROCEDURE DIVISION.
              P001-PRINCIPAL.
              DISPLAY "**** PROGRAMA DE CALCULO ****"
                 INITIALIZE WS-NUMEROS

                 DISPLAY 'INFORME O PRIMEIRO NUMERO:'
                 ACCEPT WS-N1

                 DISPLAY 'INFORME O SEGUNDO NUMERO:'
                 ACCEPT WS-N2

                 MOVE ZEROS                   TO WS-SOMA
                 COMPUTE WS-SOMA = WS-N1 + WS-N2
                 DISPLAY 'O Resultado da soma é: ' WS-SOMA
                 
              STOP RUN.
