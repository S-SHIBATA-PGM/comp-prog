// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int N, int M] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = 'Yes';
  const String No = 'No';
  print(N == M ? Yes : No);
  exit(0);
}
