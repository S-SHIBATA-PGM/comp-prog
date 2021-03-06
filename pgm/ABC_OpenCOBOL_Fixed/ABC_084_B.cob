000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_084_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(1).
000007 01 B          PIC 9(1).
000008 01 S          PIC X(10).
000009 01 flg        PIC 9(1) VALUE 1.
000010 01 i          PIC 9(2).
000011 01 ln         PIC X(11).
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT ln.
000015   ACCEPT S.
000016   UNSTRING ln DELIMITED BY SPACE INTO A B.
000017   PERFORM VARYING i FROM 1 BY 1 UNTIL A + B + 1 < i
000018     IF A + 1 = i AND S(i:1) NOT = '-' THEN
000019       MOVE 0 TO flg
000020     ELSE
000021       IF A + 1 NOT = i AND S(i:1) = '-' THEN
000022         MOVE 0 TO flg
000023       END-IF
000024     END-IF
000025   END-PERFORM.
000026   IF flg = 1 THEN
000027     DISPLAY "Yes"
000028   ELSE
000029     DISPLAY "No"
000030   END-IF.
000031   STOP RUN.

