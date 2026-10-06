// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List x = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  const int zero = 0;
  print(x.indexOf(zero) + one);
  exit(0);
}
