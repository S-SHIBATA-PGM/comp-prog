000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_014_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 a          PIC 9(10).
000007 01 ans        PIC 9(10).
000008 01 b          PIC 9(10).
000009 01 d          PIC 9(10).
000010 01 r          PIC 9(10).
000011 01 zs         PIC Z(9)9.
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT a.
000015   ACCEPT b.
000016   DIVIDE a BY b GIVING d REMAINDER r.
000017   IF ZERO = r THEN
000018     MOVE ZERO TO ans
000019   ELSE
000020     COMPUTE ans = b - r
000021   END-IF.
000022   MOVE ans TO zs.
000023   DISPLAY FUNCTION TRIM(zs).
000024   STOP RUN.

