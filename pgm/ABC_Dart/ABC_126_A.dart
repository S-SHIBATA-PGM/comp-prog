// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'package:intl/intl.dart';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [_, int K] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final String S = stdin.readLineSync()!;
  const String blank = '';
  const int one = 1;
  print(
    S
        .split(blank)
        .indexed
        .map((pair) {
          final (int i, String s) = pair;
          return i == K - one ? s.toLowerCase() : s;
        })
        .join(blank),
  );
  exit(0);
}
