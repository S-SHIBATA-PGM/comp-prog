000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_113_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007    SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011    FD SYSIN.
000012       01 INDATA PIC X(10000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 ln         PIC X(10000).
000016 01 maxlen     PIC 9(10) VALUE 100 COMP.
000017 01 cur        PIC 9(10) VALUE 1 COMP.
000018 01 dif        PIC 9(10)V9(3).
000019 01 difmin     PIC 9(10)V9(3) VALUE 1000000007.
000020 01 i          PIC 9(10) VALUE 1 COMP.
000021 01 j          PIC 9(10) COMP.
000022 01 len        PIC 9(10) COMP.
000023 01 ans        PIC 9(10).
000024 01 zs         PIC Z(9)9.
000025 01 A          PIC S9(10).
000026 01 H          PIC 9(10).
000027 01 N          PIC 9(10).
000028 01 T          PIC 9(10).
000029 
000030 PROCEDURE DIVISION.
000031   OPEN INPUT SYSIN.
000032   READ SYSIN INTO ln.
000033   MOVE FUNCTION TRIM(ln) TO N.
000034   READ SYSIN INTO ln.
000035   UNSTRING ln DELIMITED BY SPACE INTO T A.
000036   MOVE N TO maxlen.
000037   READ SYSIN INTO ln.
000038   CLOSE SYSIN.
000039   PERFORM maxlen TIMES
000040     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000041     END-PERFORM
000042     COMPUTE len = j - cur
000043     MOVE ln(cur:len) TO H
000044     COMPUTE dif = A - T + H * 0.006
000045     IF dif < difmin
000046       MOVE dif TO difmin
000047       MOVE i TO ans
000048     END-IF
000049     COMPUTE cur = j + 1
000050     ADD 1 TO i
000051   END-PERFORM.
000052   MOVE ans TO zs.
000053   DISPLAY FUNCTION TRIM(zs).
000054   STOP RUN.
