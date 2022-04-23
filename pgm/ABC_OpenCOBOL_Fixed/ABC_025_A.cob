000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_025_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(5).
000007 01 N          PIC 9(10).
000008 01 ans        PIC X(2).
000009 01 d          PIC 9(10).
000010 01 r          PIC 9(10).
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT S.
000014   ACCEPT N.
000015   SUBTRACT 1 FROM N.
000016   DIVIDE N BY 5 GIVING d REMAINDER r.
000017   STRING
000018     S(d + 1:1)
000019     S(r + 1:1)
000020     INTO ans
000021   END-STRING
000022   DISPLAY FUNCTION TRIM(ans).
000023   STOP RUN.
