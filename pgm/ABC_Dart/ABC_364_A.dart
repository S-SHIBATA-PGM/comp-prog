// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String Yes = "Yes";
  const String No = "No";
  const String sweet = "sweet";
  const String blank = "";
  const int one = 1;
  const int zero = 0;
  final List<String> S = List<String>.filled(N, blank, growable: false);
  for (int i = zero; i < N; i++) {
    S[i] = stdin.readLineSync()!;
  }
  int cnt = zero;
  for (int i = zero; i < S.length; i++) {
    if (i != N - one && cnt == one && S[i] == sweet) {
      print(No);
      exit(0);
    } else if (S[i] == sweet) {
      cnt++;
    } else {
      cnt = zero;
    }
  }
  print(Yes);
  exit(0);
}
