PROGRAM-ID.                      PROGRAM_ID.
DATA                             DIVISION.
WORKING-STORAGE                  SECTION.
    01 LN          PIC X(8).
    01 N           PIC 9(3).
    01 R           PIC 9(4).
    01 ans         PIC X(4).
    01 ZS          PIC Z(4)9.
    01 DUMMY       PIC X(1).

PROCEDURE                        DIVISION.
    ACCEPT LN.
    UNSTRING LN
    DELIMITED BY SPACE
    INTO N R.
    IF 10 <= N
        THEN
            MOVE R TO ZS;
        ELSE
            COMPUTE ZS = R + 100 * (10 - N);
    END-IF.
    PERFORM UNANS.
    DISPLAY ans(1:FUNCTION STORED-CHAR-LENGTH(ans)).
    STOP RUN.

UNANS                            SECTION.
    UNSTRING
    ZS DELIMITED BY ALL SPACE
    INTO DUMMY ans.
