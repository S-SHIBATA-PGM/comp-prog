000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_125_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(400).
000007 01 ans        PIC 9(10).
000008 01 zs         PIC Z(9)9.
000009 01 A          PIC 9(10).
000010 01 B          PIC 9(10).
000011 01 T          PIC 9(10).
000012 01 TA         PIC 9(10).
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT ln.
000016   UNSTRING ln DELIMITED BY SPACE INTO A B T.
000017   DIVIDE T BY A GIVING TA.
000018   COMPUTE ans = TA * B.
000019   MOVE ans TO zs.
000020   DISPLAY FUNCTION TRIM(zs).
000021   STOP RUN.
