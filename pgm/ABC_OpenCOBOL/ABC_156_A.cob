IDENTIFICATION                    DIVISION.
PROGRAM-ID.                       PROGRAM_ID.
DATA                              DIVISION.
WORKING-STORAGE                   SECTION.
01 LN           PIC X(8).
01 N            PIC 9(3).
01 R            PIC 9(4).
01 ans          PIC Z(3)9.

PROCEDURE                         DIVISION.
    ACCEPT LN.
    UNSTRING LN DELIMITED BY SPACE INTO N R.
    IF 10 <= N
        MOVE R TO ans
    ELSE
        COMPUTE ans = R + 100 * (10 - N)
    END-IF.
    DISPLAY ans.
    STOP RUN.
