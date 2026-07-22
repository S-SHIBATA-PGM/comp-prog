// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  const String blank = '';
  const int two = 2;
  const int zero = 0;
  final Int32List S = Int32List.fromList(
    stdin.readLineSync()!.split(blank).map((String s) {
      return int.tryParse(s) ?? zero;
    }).toList(),
  );
  print(S[zero] * S[two]);
  exit(0);
}
