// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  const String Yes = "Yes";
  const String No = "No";
  const String For = "For";
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final int N = int.parse(stdin.readLineSync()!);
  final int most = (N + one) ~/ two;
  int cntFor = zero;
  int cntAgainst = zero;
  for (int i = zero; i < N; i++) {
    if (stdin.readLineSync()! == For) {
      cntFor += one;
    } else {
      cntAgainst += one;
    }
    if (cntFor >= most) {
      print(Yes);
      break;
    } else if (cntAgainst >= most) {
      print(No);
      break;
    }
  }
  exit(0);
}
