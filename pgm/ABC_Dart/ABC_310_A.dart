// import 'dart:collection';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int N, int P, int Q] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List D = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  int price = Q + D.reduce(min);
  print(min(P, price));
  exit(0);
}
