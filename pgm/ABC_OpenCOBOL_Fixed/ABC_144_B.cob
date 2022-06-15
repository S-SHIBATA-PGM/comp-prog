000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_144_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 ans        PIC X(30).
000008 01 flg        PIC 9(1) VALUE ZERO.
000009 01 i          PIC 9(10).
000010 01 j          PIC 9(10).
000011 01 zs         PIC Z(9)9.
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT N.
000015   PERFORM VARYING i FROM 1 BY 1 UNTIL 9 < i
000016     PERFORM VARYING j FROM 1 BY 1 UNTIL 9 < j
000017       IF i * j = N
000018         MOVE 1 TO flg
000019         EXIT PERFORM
000020       END-IF
000021     END-PERFORM
000022     IF 1 = flg
000023       EXIT PERFORM
000024     END-IF
000025   END-PERFORM.
000026   IF 1 = flg
000027     DISPLAY "Yes"
000028   ELSE
000029     DISPLAY "No"
000030   END-IF.
000031   STOP RUN.
