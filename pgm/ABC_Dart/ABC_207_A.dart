// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List ABC = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  ABC.sort((a, b) => b.compareTo(a));
  const int two = 2;
  print(ABC.take(two).reduce((a, b) => a + b));
  exit(0);
}
