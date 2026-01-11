// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int N, int M] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final String Yes = "Yes";
  final String No = "No";
  print(A.reduce((a, b) => a + b) <= M ? Yes : No);
  exit(0);
}
