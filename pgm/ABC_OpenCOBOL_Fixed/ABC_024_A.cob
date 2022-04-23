000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_024_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 C          PIC 9(10).
000009 01 K          PIC 9(10).
000010 01 S          PIC 9(10).
000011 01 T          PIC 9(10).
000012 01 ans        PIC 9(10).
000013 01 ln         PIC X(30).
000014 01 zs         PIC Z(9)9.
000015 
000016 PROCEDURE DIVISION.
000017   ACCEPT ln.
000018   UNSTRING ln DELIMITED BY SPACE INTO A B C K.
000019   ACCEPT ln.
000020   UNSTRING ln DELIMITED BY SPACE INTO S T.
000021   COMPUTE ans = S * A + T * B.
000022   IF K <= S + T THEN
000023     COMPUTE ans = ans - C * (S + T)
000024   END-IF.
000025   MOVE ans TO zs.
000026   DISPLAY FUNCTION TRIM(zs).
000027   STOP RUN.
