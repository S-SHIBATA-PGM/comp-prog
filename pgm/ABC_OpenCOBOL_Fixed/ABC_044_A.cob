000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_044_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 K          PIC 9(5).
000007 01 N          PIC 9(5).
000008 01 X          PIC 9(5).
000009 01 Y          PIC 9(5).
000010 01 minK       PIC 9(5).
000011 01 tmp        PIC 9(9).
000012 01 zs         PIC Z(10).
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT N.
000016   ACCEPT K.
000017   ACCEPT X.
000018   ACCEPT Y.
000019   COMPUTE minK = FUNCTION MIN(N, K).
000020   COMPUTE tmp = X * minK + Y * (N - minK).
000021   MOVE tmp TO zs.
000022   DISPLAY FUNCTION TRIM(zs).
000023   STOP RUN.
