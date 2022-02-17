000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_114_B.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 i          PIC 9(10) COMP.
000007 01 j          PIC 9(10) COMP.
000008 01 ans        PIC 9(10) VALUE 999.
000009 01 zs         PIC Z(9)9.
000010 01 S          PIC X(10).
000011 01 SLEN       PIC 9(10).
000012 01 num        PIC 9(10).
000013 01 numab      PIC 9(10).
000014 
000015 PROCEDURE DIVISION.
000016   ACCEPT S.
000017   COMPUTE SLEN = FUNCTION STORED-CHAR-LENGTH(S).
000018   PERFORM VARYING i FROM 1 BY 1 UNTIL SLEN - 2 < i
000019     MOVE S(i:3) TO num
000020     COMPUTE numab = 753 - num
000021     IF numab < ans
000022       MOVE numab TO ans
000023     END-IF
000024   END-PERFORM.
000025   MOVE ans TO zs.
000026   DISPLAY FUNCTION TRIM(zs).
000027   STOP RUN.
