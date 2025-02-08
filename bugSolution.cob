01  WS-DATA-AREA. 
    05  WS-AMOUNT          PIC 9(7)V99 VALUE 0. 
    05  WS-COUNT           PIC 9(3) VALUE 0. 
* Modified the picture clause of WS-AMOUNT from 9(5)V99 to 9(7)V99 to accommodate larger values.

PROCEDURE DIVISION.
    PERFORM 100-PROCESS-DATA UNTIL WS-COUNT = 100
    STOP RUN. 

100-PROCESS-DATA SECTION.
    ADD 100000.00 TO WS-AMOUNT 
    ADD 1 TO WS-COUNT 
    DISPLAY "Current amount: " WS-AMOUNT
END PROGRAM.