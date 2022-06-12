000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_131_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 N          PIC S9(10).
000007 01 NX         PIC X(30).
000008 01 L          PIC S9(10).
000009 01 LX         PIC X(30).
000010 01 ans        PIC S9(10).
000011 01 ln         PIC X(30).
000012 01 zs         PIC -Z(9)9.
000013 
000014 *> (N * (L + (L + N - 1))) / 2
000015 *> (N * (2 * L + N - 1)) / 2
000016 PROCEDURE DIVISION.
000017   ACCEPT ln.
000018   UNSTRING ln DELIMITED BY SPACE INTO NX LX.
000019   IF NX(1:1) = "-"
000020     MOVE NX(2:FUNCTION STORED-CHAR-LENGTH(NX) - 1) TO N
000021     COMPUTE N = -N
000022   ELSE
000023     MOVE NX(1:FUNCTION STORED-CHAR-LENGTH(NX)) TO N
000024   END-IF.
000025   IF LX(1:1) = "-"
000026     MOVE LX(2:FUNCTION STORED-CHAR-LENGTH(LX) - 1) TO L
000027     COMPUTE L = -L
000028   ELSE
000029     MOVE LX(1:FUNCTION STORED-CHAR-LENGTH(LX)) TO L
000030   END-IF.
000031   COMPUTE ans = (N * (2 * L + N - 1)) / 2.
000032   IF ZERO < L
000033     COMPUTE ans = ans - L
000034   ELSE
000035     IF L + N - 1 < ZERO
000036       COMPUTE ans = ans - (L + N - 1)
000037     END-IF
000038   END-IF.
000039   IF ZERO = ans
000040     DISPLAY 0
000041   ELSE
000042     MOVE ans TO zs
000043     DISPLAY FUNCTION TRIM(zs)
000044   END-IF.
000045   STOP RUN.
