IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
SELECT SYSIN_B ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
SELECT SYSIN_S ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.

DATA DIVISION.
FILE SECTION.
FD SYSIN_B.
01 INDATA_B   PIC X(2200007).
FD SYSIN_S.
01 INDATA_S   PIC X(2207).

WORKING-STORAGE SECTION.
01 L          PIC 9(6).
01 N          PIC 9(10).
01 a1.
   03 a       BINARY-DOUBLE VALUE 9223372036854775807
              OCCURS 200000.
01 accm       BINARY-DOUBLE.
01 bd_max     BINARY-DOUBLE VALUE 9223372036854775807.
01 cur        BINARY-DOUBLE.
01 i          PIC 9(10) COMP.
01 idx        PIC 9(10) VALUE 1.
01 idxa       PIC 9(10) VALUE 1.
01 idxrb      PIC 9(10) VALUE 1.
01 j          PIC 9(10) COMP.
01 num        PIC 9(10) VALUE ZERO COMP.
01 pre        BINARY-DOUBLE.
01 prei       PIC 9(10).
01 pt         PIC S9(10).
01 ra1.
   03 ra      OCCURS 300000.
      05 ida  BINARY-DOUBLE.
      05 vala BINARY-DOUBLE.
01 rb1.
   03 rb      OCCURS 200000.
      05 idb  BINARY-DOUBLE.
      05 valb BINARY-DOUBLE.
01 tbl1.
   03 tbl     OCCURS 200001.
      05 tbli BINARY-DOUBLE VALUE ZERO.
      05 idn  BINARY-DOUBLE VALUE 200001.
      05 tblj BINARY-DOUBLE VALUE ZERO.
      05 ky   BINARY-DOUBLE VALUE 1000000001.
      05 vl   BINARY-DOUBLE.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  IF 1000 <= N
    OPEN INPUT SYSIN_S
  ELSE
    OPEN INPUT SYSIN_B
  END-IF.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF 1000 <= N
      READ SYSIN_S
    ELSE
      READ SYSIN_B
    END-IF
    MOVE 1 TO pt
    IF 1000 <= N
      UNSTRING INDATA_S DELIMITED SPACE INTO L POINTER pt
    ELSE
      UNSTRING INDATA_B DELIMITED SPACE INTO L POINTER pt
    END-IF
    MOVE ZERO TO accm
    PERFORM VARYING j FROM 1 BY 1 UNTIL L < j
      IF 1000 <= N
        UNSTRING INDATA_S DELIMITED SPACE INTO cur POINTER pt
      ELSE
        UNSTRING INDATA_B DELIMITED SPACE INTO cur POINTER pt
      END-IF
      MOVE i TO tbli(idx)
      MOVE idx TO idn(idx)
      MOVE j TO tblj(idx)
      MOVE cur TO ky(idx)
      ADD 1 TO idx
    END-PERFORM
  END-PERFORM.
  IF 1000 <= N
    CLOSE SYSIN_S
  ELSE
    CLOSE SYSIN_B
  END-IF.
  SORT tbl ASCENDING ky
           ASCENDING idn.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 300000 < i
    MOVE i TO ida(i)
      COMPUTE vala(i) = FUNCTION RANDOM * 10000000000
      + FUNCTION RANDOM / 14159265358
      + FUNCTION RANDOM * 14159265358
  END-PERFORM.
  SORT ra ASCENDING vala.
  MOVE bd_max TO pre.
  PERFORM VARYING i FROM 1 BY 1
  UNTIL 200000 < idxrb OR 300000 < i
    IF pre NOT = vala(i)
      MOVE ida(i) TO idb(idxrb)
      MOVE vala(i) TO valb(idxrb)
      ADD 1 TO idxrb
    END-IF
    MOVE vala(i) TO pre
  END-PERFORM.
  SORT rb ASCENDING idb.
  MOVE 1 TO idxrb.
  MOVE 1000000001 TO pre.
  PERFORM VARYING i FROM 1 BY 1 UNTIL idx - 1 < i
    IF pre NOT = ky(i)
      COMPUTE cur = valb(idxrb)
      ADD 1 TO idxrb
    END-IF
    MOVE cur TO vl(i)
    MOVE ky(i) TO pre
  END-PERFORM.
  SORT tbl ASCENDING idn.
  MOVE tbli(1) TO prei.
  MOVE ZERO TO accm.
  PERFORM VARYING i FROM 1 BY 1 UNTIL idx < i
    IF prei NOT = tbli(i)
      MOVE accm TO a(idxa)
      ADD 1 TO idxa
      MOVE ZERO TO accm
    END-IF
    MULTIPLY tblj(i) BY vl(i) GIVING cur
    CALL "CBL_XOR" USING cur, accm, BY VALUE 4
    MOVE tbli(i) TO prei
  END-PERFORM.
  SORT a ASCENDING a.
  MOVE bd_max TO pre.
  PERFORM VARYING i FROM 1 BY 1 UNTIL N < i
    IF pre NOT = a(i)
      ADD 1 TO num
      MOVE a(i) TO pre
  END-PERFORM.
  MOVE num TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

