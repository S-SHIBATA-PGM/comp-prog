// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final Int32List H = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  print(H.indexOf(H.reduce(max)) + one);
  exit(0);
}
