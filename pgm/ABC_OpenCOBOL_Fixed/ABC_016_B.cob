000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_016_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 C          PIC 9(10).
000009 01 ans        PIC X(1) VALUE SPACE.
000010 01 ln         PIC X(30).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED BY SPACE INTO A B C.
000015   IF C = A + B THEN
000016     IF C = A - B THEN
000017       MOVE "?" TO ans
000018     ELSE
000019       MOVE "+" TO ans
000020     END-IF
000021   ELSE
000022     IF C = A - B THEN
000023       MOVE "-" TO ans
000024     ELSE
000025       MOVE "!" TO ans
000026     END-IF
000027   END-IF.
000028   DISPLAY ans.
000029   STOP RUN.
