000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_018_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC 9(10).
000007 01 S          PIC X(100).
000008 01 cur        PIC X(1).
000009 01 i          PIC 9(10) COMP.
000010 01 l          PIC 9(10) COMP.
000011 01 ln         PIC X(100).
000012 01 r          PIC 9(10) COMP.
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT S.
000016   ACCEPT N.
000017   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000018     ACCEPT ln
000019     UNSTRING ln DELIMITED BY SPACE INTO l r
000020     PERFORM VARYING r FROM r BY -1 UNTIL r <= l
000021       MOVE S(l:1) TO cur
000022       MOVE S(r:1) TO S(l:1)
000023       MOVE cur TO S(r:1)
000024       ADD 1 TO l
000025     END-PERFORM
000026   END-PERFORM.
000027   DISPLAY FUNCTION TRIM(S).
000028   STOP RUN.
