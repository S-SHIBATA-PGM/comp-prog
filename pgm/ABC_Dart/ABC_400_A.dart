// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int A = int.parse(stdin.readLineSync()!);
  final int fourHundred = 400;
  final int no = -1;
  final int zero = 0;
  print(fourHundred % A == zero ? fourHundred ~/ A : no);
}
