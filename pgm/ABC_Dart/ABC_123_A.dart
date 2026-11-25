// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int a = int.parse(stdin.readLineSync()!);
  stdin.readLineSync()!;
  stdin.readLineSync()!;
  stdin.readLineSync()!;
  final int e = int.parse(stdin.readLineSync()!);
  final int k = int.parse(stdin.readLineSync()!);
  const String no = ":(";
  const String yay = "Yay!";
  print(e - a <= k ? yay : no);
  exit(0);
}
