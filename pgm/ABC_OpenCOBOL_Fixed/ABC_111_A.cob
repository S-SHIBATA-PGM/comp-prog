000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_111_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 n          PIC X(3).
000007 01 i          PIC 9(10) COMP.
000008 
000009 PROCEDURE DIVISION.
000010   ACCEPT n.
000011   PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
000012     IF n(i:1) = "1"
000013       MOVE "9" TO n(i:1)
000014     ELSE
000015       MOVE "1" TO n(i:1)
000016     END-IF
000017   END-PERFORM.
000018   DISPLAY n.
000019   STOP RUN.