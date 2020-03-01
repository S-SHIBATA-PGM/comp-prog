PROGRAM-ID.                      PROGRAM_ID.
DATA                             DIVISION.
WORKING-STORAGE                  SECTION.
    01 LN           PIC X(13).
    01 N            PIC 9(10).
    01 K            PIC 9(2).
    01 cnt          PIC 9(3).
    01 ans          PIC X(3).
    01 ZS           PIC Z(3)9.
    01 DUMMY        PIC X(1).

PROCEDURE                        DIVISION.
    ACCEPT LN.
    UNSTRING LN DELIMITED BY SPACE INTO N K.
    MOVE 0 TO cnt.
    PERFORM UNTIL N <= 0
       COMPUTE N = N / K
       ADD 1 TO cnt
    END-PERFORM.
    MOVE cnt TO ZS.
    PERFORM UNANS.
    DISPLAY ans(1:FUNCTION STORED-CHAR-LENGTH(ans)).
    STOP RUN.

UNANS                            SECTION.
    UNSTRING
    ZS DELIMITED BY ALL SPACE
    INTO DUMMY ans.
