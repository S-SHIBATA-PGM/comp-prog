000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_158_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(19).
000007 01 B          PIC 9(19).
000008 01 N          PIC 9(19).
000009 01 ans        PIC 9(19).
000010 01 dv         PIC 9(19).
000011 01 ln         PIC X(60).
000012 01 rm         PIC 9(19).
000013 01 zs         PIC Z(18)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT ln.
000017   UNSTRING ln DELIMITED SPACE INTO N A B.
000018   COMPUTE dv = N / (A + B).
000019   COMPUTE rm = N - dv * (A + B).
000020   IF A < rm
000021     COMPUTE ans = A * dv + A
000022   ELSE
000023     COMPUTE ans = A * dv + rm
000024   END-IF.
000025   MOVE ans TO zs.
000026   DISPLAY FUNCTION TRIM(zs).
000027   STOP RUN.

