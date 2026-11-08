// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int a = int.parse(stdin.readLineSync()!);
  final String s = stdin.readLineSync()!;
  const String red = 'red';
  const int threeThousandTwoHundred = 3200;
  print(a >= threeThousandTwoHundred ? s : red);
  exit(0);
}
