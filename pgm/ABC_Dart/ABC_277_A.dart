// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int _, int X] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List P = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  print(P.indexOf(X) + one);
  exit(0);
}
