000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_239_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 D          PIC S9(20).
000007 01 R          PIC 9(10).
000008 01 X          PIC S9(20).
000009 01 zs         PIC -(19)9.
000010 
000011 PROCEDURE DIVISION.
000012   ACCEPT X.
000013   DIVIDE X BY 10 GIVING D REMAINDER R.
000014   IF X < ZERO
000015     IF ZERO NOT = R
000016       SUBTRACT 1 FROM D
000017     END-IF
000018   END-IF.
000019   MOVE D TO zs.
000020   DISPLAY FUNCTION TRIM(zs).
000021   STOP RUN.
