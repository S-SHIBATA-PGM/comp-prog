// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  stdin.readLineSync()!;
  final List<int> A = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  final int K = int.parse(stdin.readLineSync()!);
  print(A.where((a) => a >= K).length);
  exit(0);
}
