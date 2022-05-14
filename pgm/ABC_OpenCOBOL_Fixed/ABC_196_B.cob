000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_196_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 X          PIC X(201).
000007 01 i          PIC 9(10) COMP.
000008 01 len        PIC 9(10).
000009 
000010 PROCEDURE DIVISION.
000011   ACCEPT X.
000012   MOVE FUNCTION STORED-CHAR-LENGTH(X) TO len.
000013   PERFORM VARYING i FROM 1 BY 1 UNTIL len < i
000014     IF "." = X(i:1) SUBTRACT 1 FROM i EXIT PERFORM
000015   END-PERFORM.
000016   DISPLAY FUNCTION TRIM(X(1:i)).
000017   STOP RUN.

