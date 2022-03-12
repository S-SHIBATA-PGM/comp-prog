000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_101_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(4).
000007 01 ans        PIC 9(1).
000008 01 i          PIC 9(1).
000009 01 sary1.
000010    03 sary11 OCCURS 4.
000011       05 sary PIC X(1).
000012 01 tmp        PIC S9(1).
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT S.
000016   MOVE S(1:1) TO sary(1).
000017   MOVE S(2:1) TO sary(2).
000018   MOVE S(3:1) TO sary(3).
000019   MOVE S(4:1) TO sary(4).
000020   MOVE 0 TO tmp.
000021   PERFORM VARYING i FROM 1 BY 1 UNTIL 4 < i
000022     IF sary(i) = '+' THEN
000023       COMPUTE tmp = tmp + 1
000024     ELSE
000025       COMPUTE tmp = tmp - 1
000026     END-IF
000027   END-PERFORM.
000028   IF 0 <= tmp THEN
000029     MOVE tmp TO ans
000030     DISPLAY ans
000031   ELSE
000032     DISPLAY tmp
000033   END-IF.
000034   STOP RUN.

