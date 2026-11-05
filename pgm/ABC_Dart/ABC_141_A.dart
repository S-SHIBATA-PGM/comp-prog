// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final String S = stdin.readLineSync()!;
  const String sunny = 'Sunny';
  const String cloudy = 'Cloudy';
  const String rainy = 'Rainy';
  const int one = 1;
  final List<String> weather = [sunny, cloudy, rainy];
  print(weather[(weather.indexOf(S) + one) % weather.length]);
  exit(0);
}
