
           
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTE.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOME PIC X(10).
       PROCEDURE DIVISION.
         DISPLAY "What is your name:" 
         ACCEPT WS-NOME
         DISPLAY "O nome digitado foi:" WS-NOME
       STOP RUN.