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
  const int two = 2;
  const int zero = 0;
  final List<String> S = List<String>.filled(N, blank, growable: false);
  for (int i = zero; i < N; i++) {
    S[i] = stdin.readLineSync()!;
  }
  if (Iterable<int>.generate(N - two).any((i) {
    return S[i] == sweet && S[i + one] == sweet;
  })) {
    print(No);
  } else {
    print(Yes);
  }
  exit(0);
}
