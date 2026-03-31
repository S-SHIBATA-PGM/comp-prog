// import 'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int no = -1;
  const int one = 1;
  const int two = 2;
  const int three = 3;
  if (A == B) {
    print(no);
  } else {
    print([one, two, three].firstWhere((int x) => x != A && x != B));
  }
  exit(0);
}
