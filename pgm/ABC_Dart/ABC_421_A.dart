// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  List<String> S = [];
  for (int i = 0; i < N; i++) {
    S.add(stdin.readLineSync()!);
  }
  final (int X, String Y) = ((arr) =>
      (int.parse(arr[0]), arr[1]))(stdin.readLineSync()!.split(' '));
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  if (S[X - one] == Y) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
