// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final double N = double.parse(stdin.readLineSync()!);
  const double dTwo = 2.0;
  print((N / dTwo).ceil() / N);
  exit(0);
}
