IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(4).
01 K          PIC 9(4).
01 ln         PIC X(9).
01 total      PIC 9(10).
01 zs         PIC Z(11).

PROCEDURE DIVISION.
    ACCEPT ln.
    UNSTRING ln DELIMITED BY SPACE INTO N K.
    MOVE 1 TO total.
    COMPUTE total = K * (K - 1) ** (N - 1).
    MOVE total TO zs.
    DISPLAY FUNCTION TRIM(zs).
    STOP RUN.

