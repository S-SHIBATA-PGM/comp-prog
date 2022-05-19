000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_208_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 FCT1.
000007    03 FCT    PIC 9(10) OCCURS 10.
000008 01 P         PIC 9(10).
000009 01 ans       PIC 9(10) VALUE ZERO.
000010 01 d         PIC 9(10).
000011 01 i         PIC 9(10) COMP.
000012 01 r         PIC 9(10).
000013 01 zs        PIC Z(9)9.
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT P.
000017   MOVE 1 TO FCT(1).
000018   PERFORM VARYING i FROM 2 BY 1 UNTIL 10 < i
000019     COMPUTE FCT(i) = i * FCT(i - 1)
000020   END-PERFORM.
000021   PERFORM VARYING i FROM 10 BY -1 UNTIL i < 1
000022     DIVIDE P BY FCT(i) GIVING d REMAINDER r
000023     IF FCT(i) <= P COMPUTE ans = ans + d MOVE r TO P
000024   END-PERFORM.
000025   MOVE ans TO zs.
000026   DISPLAY FUNCTION TRIM(zs).
000027   STOP RUN.

