//  'dart:collection';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int M, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  var [int y, int m, int d] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String space = ' ';
  d++;
  if (d > D) {
    d -= D;
    m++;
  }
  if (m > M) {
    m -= M;
    y++;
  }
  print([y, m, d].join(space));
  exit(0);
}
