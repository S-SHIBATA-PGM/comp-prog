// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int _, int K] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String space = ' ';
  const int zero = 0;
  print(
    A
        .where((int a) => a % K == zero)
        .map((int a) => (a ~/ K).toString())
        .join(space),
  );
  exit(0);
}
