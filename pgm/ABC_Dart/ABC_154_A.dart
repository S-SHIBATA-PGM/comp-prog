// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  const String space = ' ';
  const int zero = 0;
  final List<String> arr = stdin.readLineSync()!.split(space);
  final String S = arr[zero];
  final [int A, int B] = stdin
      .readLineSync()!
      .split(space)
      .map(int.parse)
      .toList();
  final U = stdin.readLineSync()!;
  print(S == U ? "${A - 1}" + space + "$B" : "$A" + space + "${B - 1}");
  exit(0);
}
