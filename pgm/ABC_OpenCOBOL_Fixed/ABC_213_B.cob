000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_213_B.
000003 
000004 ENVIRONMENT DIVISION.
000005 INPUT-OUTPUT SECTION.
000006 FILE-CONTROL.
000007 SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
000008 
000009 DATA DIVISION.
000010 FILE SECTION.
000011 FD SYSIN.
000012 01 INDATA     PIC X(2200000).
000013 
000014 WORKING-STORAGE SECTION.
000015 01 A1.
000016    03 A       PIC 9(10) OCCURS 200000 DEPENDING N INDEXED IXA.
000017 01 CPA1.
000018    03 CPA     PIC 9(10) OCCURS 200000 DEPENDING N.
000019 01 N          PIC 9(10).
000020 01 ans        PIC Z(9)9.
000021 01 i          PIC 9(10) COMP.
000022 01 idx        PIC 9(10).
000023 01 pt         PIC S9(10) VALUE 1.
000024 
000025 PROCEDURE DIVISION.
000026   OPEN INPUT SYSIN.
000027   READ SYSIN INTO N.
000028   READ SYSIN.
000029   CLOSE SYSIN.
000030   PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
000031     UNSTRING INDATA DELIMITED SPACE INTO A(i) POINTER pt
000032     MOVE A(i) TO CPA(i)
000033   END-PERFORM.
000034   SORT CPA DESCENDING CPA.
000035   SEARCH A
000036     WHEN CPA(2) = A(IXA)
000037       MOVE IXA TO idx
000038   END-SEARCH.
000039   MOVE idx TO ans.
000040   DISPLAY FUNCTION TRIM(ans).
000041   STOP RUN.
