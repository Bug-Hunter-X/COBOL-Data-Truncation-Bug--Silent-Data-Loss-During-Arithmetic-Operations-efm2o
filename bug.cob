01  WS-DATA-AREA. 
    05  WS-AMOUNT          PIC 9(5)V99 VALUE 0. 
    05  WS-COUNT           PIC 9(3) VALUE 0. 
* In this data area, we have a numeric field WS-AMOUNT with a picture clause of 9(5)V99. 
* This indicates that it can hold values up to 99999.99. 
*  However, when it is used for computation in the program and receives a value exceeding its capacity. 
*  For instance, in the program, if an amount greater than 99999.99 is added to this field, it will lead to data truncation.
* This data truncation is subtle and may not immediately raise an error, yet it can affect the overall accuracy of the application.

PROCEDURE DIVISION.
    PERFORM 100-PROCESS-DATA UNTIL WS-COUNT = 100
    STOP RUN. 

100-PROCESS-DATA SECTION.
    ADD 100000.00 TO WS-AMOUNT 
    ADD 1 TO WS-COUNT 
    DISPLAY "Current amount: " WS-AMOUNT
END PROGRAM.