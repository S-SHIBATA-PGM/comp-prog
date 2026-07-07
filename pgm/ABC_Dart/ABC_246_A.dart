// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List xy1 = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  final Int32List xy2 = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  final Int32List xy3 = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String space = ' ';
  const int one = 1;
  const int two = 2;
  const int zero = 0;
  final Int32List x = Int32List.fromList([xy1[zero], xy2[zero], xy3[zero]]);
  final Int32List y = Int32List.fromList([xy1[one], xy2[one], xy3[one]]);
  print(
    '${x[zero] ^ x[one] ^ x[two]}'
    '$space'
    '${y[zero] ^ y[one] ^ y[two]}',
  );
  exit(0);
}
