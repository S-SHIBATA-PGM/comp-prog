000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_209_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10) VALUE ZERO.
000007 01 N          PIC 9(10).
000008 01 X          PIC 9(10).
000009 01 d          PIC 9(10).
000010 01 i          PIC 9(10).
000011 01 ln         PIC X(400).
000012 01 pt         PIC S9(10) VALUE 1.
000013 01 sm         PIC 9(10) VALUE ZERO.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED SPACE INTO N X.
000018   ACCEPT ln.
000019   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000020     UNSTRING ln DELIMITED SPACE INTO A POINTER pt
000021     ADD A TO sm
000022   END-PERFORM.
000023   DIVIDE N BY 2 GIVING d.
000024   IF sm - d <= X DISPLAY "Yes" ELSE DISPLAY "No".
000025   STOP RUN.
