// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
import 'dart:typed_data';

void main() {
  final Int32List card = Int32List.fromList(
    stdin.readLineSync()!.split(' ').map(int.parse).toList(),
  );
  const String Yes = "Yes";
  const String No = "No";
  const int one = 1;
  const int two = 2;
  const int three = 3;
  const int zero = 0;
  final Map<int, int> count = {};
  for (final int num in card) {
    count[num] = (count[num] ?? zero) + one;
  }
  print(count.values.contains(three) && count.values.contains(two) ? Yes : No);
  exit(0);
}
