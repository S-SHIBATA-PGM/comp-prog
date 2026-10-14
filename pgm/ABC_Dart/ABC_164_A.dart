// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int S, int W] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String unsafe = 'unsafe';
  const String safe = 'safe';
  if (S <= W) {
    print(unsafe);
  } else {
    print(safe);
  }
  exit(0);
}
