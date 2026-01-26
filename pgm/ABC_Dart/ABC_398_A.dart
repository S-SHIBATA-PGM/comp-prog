// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  final String hyphen = "-";
  final String equal = "=";
  final int two = 2;
  final String lr = hyphen * ((N - two + N % two) ~/ two);
  final String c = equal * (two - N % two);
  print("$lr$c$lr");
  exit(0);
}
