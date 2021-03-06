000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_254_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 i          PIC 9(10) COMP.
000008 01 j          PIC 9(10) COMP.
000009 01 cur1.
000010    03 cur     PIC 9(10) VALUE ZERO OCCURS 30 DEPENDING N.
000011 01 num1.
000012    03 num     PIC 9(10) VALUE ZERO OCCURS 30 DEPENDING N.
000013 01 zs         PIC Z(9)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT N.
000017   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000018     INITIALIZE cur1
000019     PERFORM VARYING j FROM 1 BY 1 UNTIL i < j
000020       IF 1 = j OR i = j MOVE 1 TO cur(j)
000021       ELSE COMPUTE cur(j) = num(j - 1) + num(j) END-IF
000022       MOVE cur(j) TO zs
000023       DISPLAY FUNCTION TRIM(zs) SPACE WITH NO ADVANCING
000024     END-PERFORM
000025     MOVE cur1 TO num1
000026     DISPLAY SPACE
000027   END-PERFORM.
000028   STOP RUN.

