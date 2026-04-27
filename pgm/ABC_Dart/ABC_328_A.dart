//  'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int _, int X] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List S = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int zero = 0;
  print(S.where((s) => s <= X).fold<int>(zero, (pre, cur) => pre + cur));
  exit(0);
}
