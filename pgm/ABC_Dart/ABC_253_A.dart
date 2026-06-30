// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List abc = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String Yes = 'Yes';
  const String No = 'No';
  const int one = 1;
  const int two = 2;
  final Int32List list = Int32List.fromList(abc)..sort();
  final int len = list.length;
  print(abc[one] == list[len ~/ two] ? Yes : No);
  exit(0);
}
