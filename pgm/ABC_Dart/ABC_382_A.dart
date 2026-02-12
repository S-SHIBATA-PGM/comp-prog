// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int N, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String dot = '.';
  const String blank = '';
  final String S = stdin.readLineSync()!;
  print(S.split(blank).where((s) => s == dot).length + D);
  exit(0);
}
