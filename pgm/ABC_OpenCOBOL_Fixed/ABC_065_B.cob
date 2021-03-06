000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_065_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(6).
000007 01 a          PIC 9(6).
000008 01 ary1.
000009    03 ary11 OCCURS 100000.
000010       05 ary  PIC 9(6) VALUE 0.
000011 01 cnt        PIC S9(6) VALUE 0.
000012 01 flg1.
000013    03 flg11 OCCURS 100000.
000014       05 flg  PIC 9(1) VALUE 0.
000015 01 flg2       PIC 9(1) VALUE 0.
000016 01 i          PIC 9(6).
000017 01 now        PIC 9(6) VALUE 1.
000018 01 zs         PIC -(7).
000019 
000020 PROCEDURE DIVISION.
000021   ACCEPT N.
000022   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000023     ACCEPT a
000024     MOVE a TO ary(i)
000025   END-PERFORM.
000026   MOVE 1 TO flg(1).
000027   PERFORM VARYING i FROM 1 BY 1 UNTIL flg(ary(now)) = 1
000028     ADD 1 TO cnt
000029     MOVE ary(now) TO now
000030     MOVE 1 TO flg(now)
000031     IF now = 2 THEN
000032       MOVE 1 TO flg2
000033       EXIT PERFORM
000034     END-IF
000035   END-PERFORM.
000036   IF flg2 = 0 THEN
000037     MOVE -1 TO cnt
000038   END-IF.
000039   move cnt TO zs.
000040   DISPLAY FUNCTION TRIM(zs).
000041   STOP RUN.

