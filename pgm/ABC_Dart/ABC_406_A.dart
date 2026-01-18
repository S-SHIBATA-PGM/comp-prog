// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int A, int B, int C, int D] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const String Yes = "Yes";
  const String No = "No";
  DateTime now = DateTime.now();
  int yyyy = now.year;
  int MM = now.month;
  int dd = now.day;
  final DateTime AB = DateTime(yyyy, MM, dd, A, B);
  final DateTime CD = DateTime(yyyy, MM, dd, C, D);
  print(!CD.isAfter(AB) ? Yes : No);
  exit(0);
}
