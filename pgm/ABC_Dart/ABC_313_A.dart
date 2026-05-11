// import 'dart:collection';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

void main() {
  stdin.readLineSync()!;
  final Int32List P = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const int one = 1;
  const int zero = 0;
  final int mx = P.reduce(max);
  final int cnt = P.where((p) => p == mx).length;
  if (P[zero] != mx || (P[zero] == mx && cnt > one)) {
    print(mx - P[zero] + one);
  } else {
    print(zero);
  }
  exit(0);
}
