// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B, int C] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  print(
    (A == B && B != C) || (B == C && C != A) || (C == A && A != B) ? Yes : No,
  );
  exit(0);
}
