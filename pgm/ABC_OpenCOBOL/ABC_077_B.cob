IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 zs         PIC Z(11).

PROCEDURE DIVISION.
    ACCEPT N.
    COMPUTE N = FUNCTION SQRT(N).
    COMPUTE N = N ** 2.
    MOVE N TO zs.
    DISPLAY FUNCTION TRIM(zs).
    STOP RUN.

