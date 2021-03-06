000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_234_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 ft         PIC 9(10).
000007 01 fft        PIC 9(10).
000008 01 fftt       PIC 9(10).
000009 01 ret        PIC 9(10).
000010 01 t          PIC 9(10).
000011 01 x          PIC 9(10).
000012 01 zs         PIC Z(9)9.
000013 
000014 PROCEDURE DIVISION.
000015   ACCEPT t.
000016   MOVE t TO x.
000017   CALL "f" USING BY CONTENT x BY REFERENCE ret.
000018   MOVE ret TO ft.
000019   ADD t TO ft GIVING x.
000020   CALL "f" USING BY CONTENT x BY REFERENCE ret.
000021   MOVE ret TO fftt.
000022   CALL "f" USING BY CONTENT ft BY REFERENCE ret.
000023   MOVE ret TO fft.
000024   ADD fftt TO fft GIVING x.
000025   CALL "f" USING BY CONTENT x BY REFERENCE ret.
000026   MOVE ret TO zs.
000027   DISPLAY FUNCTION TRIM(zs).
000028   STOP RUN.
000029 END PROGRAM ABC_234_A.
000030 
000031 IDENTIFICATION DIVISION.
000032 PROGRAM-ID. f.
000033 
000034 DATA DIVISION.
000035 LINKAGE SECTION.
000036 01 x          PIC 9(10).
000037 01 ret        PIC 9(10).
000038 
000039 PROCEDURE DIVISION USING x ret.
000040   INITIALIZE ret
000041   COMPUTE ret = x ** 2 + 2 * x + 3.
000042 END PROGRAM f.

