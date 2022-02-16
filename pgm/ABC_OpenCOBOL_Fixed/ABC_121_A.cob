000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. PROGRAM_ID.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ln         PIC X(30).
000007 01 H          PIC 9(10).
000008 01 W          PIC 9(10).
000009 01 r          PIC 9(10).
000010 01 c          PIC 9(10).
000011 01 ans        PIC S9(10).
000012 01 zs         PIC Z(9)9.
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT ln.
000016   UNSTRING ln DELIMITED BY SPACE INTO H W.
000017   ACCEPT ln.
000018   UNSTRING ln DELIMITED BY SPACE INTO r c.
000019   COMPUTE ans = H * W - r * W - c * H + r * c.
000020   MOVE ans TO zs.
000021   DISPLAY FUNCTION TRIM(zs).
000022   STOP RUN.