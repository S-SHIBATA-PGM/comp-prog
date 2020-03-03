IDENTIFICATION                   DIVISION.
PROGRAM-ID.                      PROGRAM_ID.
DATA                             DIVISION.
WORKING-STORAGE                  SECTION.
01 N            PIC 9(3).
01 ans          PIC Z9.
 
PROCEDURE                        DIVISION.
    ACCEPT N.
    COMPUTE ans = (N + 1) / 2.
    DISPLAY ans.
    STOP RUN.
