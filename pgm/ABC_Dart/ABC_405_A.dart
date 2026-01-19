// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final [int R, int X] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int lower1 = 1600;
  const int lower2 = 1200;
  const int upper1 = 2999;
  const int upper2 = 2399;
  const String Yes = 'Yes';
  const String No = 'No';
  const List<int> lower = [lower1, lower2];
  const List<int> upper = [upper1, upper2];
  print(lower[X - 1] <= R && R <= upper[X - 1] ? Yes : No);
  exit(0);
}
