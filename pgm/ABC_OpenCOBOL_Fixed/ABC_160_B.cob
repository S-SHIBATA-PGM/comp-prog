000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_160_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 X          PIC 9(10).
000007 01 ans        PIC 9(10).
000008 01 dv         PIC 9(10).
000009 01 dv5        PIC 9(10).
000010 01 rm         PIC 9(10).
000011 01 zs         PIC Z(9)9.
000012 
000013 PROCEDURE DIVISION.
000014   ACCEPT X.
000015   COMPUTE dv = X / 500.
000016   COMPUTE rm = X - dv * 500.
000017   COMPUTE dv5 = rm / 5.
000018   COMPUTE ans = dv * 1000 + dv5 * 5.
000019   MOVE ans TO zs.
000020   DISPLAY FUNCTION TRIM(zs).
000021   STOP RUN.

