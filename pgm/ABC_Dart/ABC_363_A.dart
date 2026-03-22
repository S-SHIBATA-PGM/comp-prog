// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int R = int.parse(stdin.readLineSync()!);
  const int hundred = 100;
  print(hundred - (R % hundred));
  exit(0);
}
