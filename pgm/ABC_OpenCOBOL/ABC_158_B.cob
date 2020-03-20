IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 LN             PIC X(60).
01 N              PIC 9(19).
01 A              PIC 9(19).
01 B              PIC 9(19).
01 dv             PIC 9(19).
01 rm             PIC 9(19).
01 ans            PIC 9(19).
01 ZS             PIC Z(18)9.

PROCEDURE DIVISION.
  ACCEPT LN.
  UNSTRING LN DELIMITED BY SPACE INTO N A B.
  COMPUTE dv = N / (A + B).
  COMPUTE rm = N - dv * (A + B).
  IF A < rm
      COMPUTE ans = A * dv + A
  ELSE
      COMPUTE ans = A * dv + rm
  END-IF.
  MOVE ans TO ZS.
  DISPLAY ZS.
  STOP RUN.
