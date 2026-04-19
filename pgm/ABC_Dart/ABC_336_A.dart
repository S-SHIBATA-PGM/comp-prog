//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  const String L = 'L';
  const String o = 'o';
  const String n = 'n';
  const String g = 'g';
  print('$L${o * N}$n$g');
  exit(0);
}
