// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int H, int W] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final [int h, int w] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  print(H * W - h * W - H * w + h * w);
  exit(0);
}
