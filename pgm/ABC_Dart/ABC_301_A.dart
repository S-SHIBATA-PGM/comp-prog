// import 'dart:collection';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final String S = stdin.readLineSync()!;
  const String cT = 'T';
  const String cA = 'A';
  const int zero = 0;
  int countT = zero;
  int countA = zero;
  for (int i = zero; i < S.length; i++) {
    if (S[i] == cT) {
      countT++;
    } else {
      countA++;
    }
  }
  final int most = max(countT, countA);
  int cntT = zero;
  int cntA = zero;
  for (int i = zero; i < S.length; i++) {
    final String c = S[i];
    if (c == cT) {
      cntT++;
    } else {
      cntA++;
    }
    if (cntT >= most) {
      print(cT);
      break;
    } else if (cntA >= most) {
      print(cA);
      break;
    }
  }
  exit(0);
}
