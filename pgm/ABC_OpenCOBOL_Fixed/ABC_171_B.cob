000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_171_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(5000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 K          PIC 9(10).
000016 01 N          PIC 9(10).
000017 01 ans        PIC 9(10) VALUE ZERO.
000018 01 cur        PIC 9(10) VALUE 1 COMP.
000019 01 i          PIC 9(10) VALUE 1 COMP.
000020 01 j          PIC 9(10) COMP.
000021 01 len        PIC 9(10) COMP.
000022 01 ln         PIC X(5000).
000023 01 maxlen     PIC 9(10) VALUE 100 COMP.
000024 01 p1.
000025    03 p11 OCCURS 1000 DEPENDING N.
000026       05 p    PIC S9(10).
000027 01 zs         PIC Z(9)9.
000028 
000029 PROCEDURE DIVISION.
000030   ACCEPT ln.
000031   UNSTRING ln DELIMITED SPACE INTO N K.
000032   OPEN INPUT SYSIN.
000033   READ SYSIN INTO INDATA.
000034   CLOSE SYSIN.
000035   MOVE INDATA TO ln.
000036   MOVE N TO maxlen.
000037   PERFORM maxlen TIMES
000038     PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
000039     END-PERFORM
000040     COMPUTE len = j - cur
000041     MOVE ln(cur:len) TO p(i)
000042     COMPUTE cur = j + 1
000043     ADD 1 TO i
000044   END-PERFORM.
000045   SORT p11 ASCENDING p.
000046   PERFORM VARYING i FROM 1 BY 1 UNTIL K < i
000047     ADD p(i) TO ans
000048   END-PERFORM.
000049   MOVE ans TO zs.
000050   DISPLAY FUNCTION TRIM(zs).
000051   STOP RUN.

