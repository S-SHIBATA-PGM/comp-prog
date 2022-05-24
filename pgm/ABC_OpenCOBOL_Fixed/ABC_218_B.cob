000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_218_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 P          PIC 9(10).
000007 01 ans        PIC X(26).
000008 01 i          PIC 9(10).
000009 01 ln         PIC X(100).
000010 01 pt         PIC 9(10) VALUE 1.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   PERFORM VARYING i FROM 1 BY 1 UNTIL 26 < i
000015     UNSTRING ln DELIMITED SPACE INTO P POINTER pt
000016     MOVE FUNCTION CHAR(FUNCTION ORD("a") + P - 1) TO ans(i:1)
000017   END-PERFORM.
000018   DISPLAY ans.
000019   STOP RUN.

