// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final int N = int.parse(stdin.readLineSync()!);
  final Int32List A = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String blank = '';
  const String space = ' ';
  const int seven = 7;
  const int zero = 0;
  String s = blank;
  int sum = zero;
  int j = zero;
  for (int i = zero; i < N; i++) {
    final int next = j + seven;
    while (j < next) {
      sum += A[j];
      j++;
    }
    stdout.write(s);
    stdout.write(sum);
    s = space;
    sum = zero;
  }
  print(blank);
  exit(0);
}
