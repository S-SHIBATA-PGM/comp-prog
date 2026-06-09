// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  final List<String> S = [];
  for (int i = 0; i < N; i++) {
    S.add(stdin.readLineSync()!);
  }
  S.reversed.forEach(print);
  exit(0);
}
