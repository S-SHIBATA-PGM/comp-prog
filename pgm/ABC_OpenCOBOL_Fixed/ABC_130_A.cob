000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. ABC_130_A.
000030
000040 DATA DIVISION.
000050 WORKING-STORAGE SECTION.
000060 01 ln         PIC X(30).
000070 01 X          PIC 9(10).
000080 01 A          PIC 9(10).
000090 01 ans        PIC X(30).
000100 01 zs         PIC Z(9)9.
000110
000120 PROCEDURE DIVISION.
000130   ACCEPT ln.
000140   UNSTRING ln DELIMITED BY SPACE INTO X A.
000150   IF X < A
000160     MOVE "0" TO ans
000170   ELSE
000180     MOVE "10" TO ans
000190   END-IF.
000200   DISPLAY FUNCTION TRIM(ans).
000210   STOP RUN.
