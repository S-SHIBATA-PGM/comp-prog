// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final [int N, int K] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String space = ' ';
  const int zero = 0;
  final List<int> list;
  if (K >= N) {
    list = List<int>.filled(N, zero);
  } else {
    list = [...A.skip(K), ...List<int>.filled(K, zero)];
  }
  print(list.join(space));
  exit(0);
}
