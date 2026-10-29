// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String bust = "bust";
  const String win = "win";
  const int twentyTwo = 22;
  const int zero = 0;
  print(A.fold(zero, (prev, curr) => prev + curr) >= twentyTwo ? bust : win);
  exit(0);
}
