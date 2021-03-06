IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 K          PIC 9(2).
01 N          PIC 9(2).
01 board      PIC 9(11) VALUE 1.
01 i          PIC 9(2).
01 zs         PIC Z(12)9.

PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT K.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    COMPUTE board = FUNCTION MIN (board * 2, board + K)
  END-PERFORM.
  MOVE board TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

