import 'dart:io';
// import 'dart:math';

void main() {
  final [int A, int B, int C, int D] = stdin
      .readLineSync()!
      .split(" ")
      .map(int.parse)
      .toList();
  const String Yes = "Yes";
  const String No = "No";
  print(A <= C && B > D ? Yes : No);
  exit(0);
}
