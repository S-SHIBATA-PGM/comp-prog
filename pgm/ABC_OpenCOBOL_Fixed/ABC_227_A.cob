000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_227_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 N          PIC 9(10).
000008 01 K          PIC 9(10).
000009 01 d          PIC 9(10).
000010 01 ln         PIC X(30).
000011 01 r          PIC 9(10).
000012 01 zs         PIC Z(9)9.
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT ln.
000016   UNSTRING ln DELIMITED SPACE INTO N K A.
000017   COMPUTE d = A + K - 1.
000018   DIVIDE d BY N GIVING d REMAINDER r.
000019   MOVE N TO zs.
000020   IF ZERO < r MOVE r TO zs.
000021   DISPLAY FUNCTION TRIM(zs).
000022   STOP RUN.

