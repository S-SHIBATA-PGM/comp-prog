000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_246_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 ln         PIC X(30).
000009 01 zsx        PIC Z(9)9.9(12).
000010 01 zsy        PIC Z(9)9.9(12).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED SPACE INTO A B.
000015   COMPUTE zsx = A / (A ** 2 + B ** 2) ** 0.5.
000016   COMPUTE zsy = B / (A ** 2 + B ** 2) ** 0.5.
000017   DISPLAY FUNCTION TRIM(zsx) SPACE FUNCTION TRIM(zsy).
000018   STOP RUN.
