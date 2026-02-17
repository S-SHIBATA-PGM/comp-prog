// import 'dart:collection';
import 'dart:io';
// import 'dart:math';

void main() {
  final List<int> N = stdin.readLineSync()!.split('').map(int.parse).toList();
  const String Yes = "Yes";
  const String No = "No";
  const int one = 1;
  const int two = 2;
  const int three = 3;
  const int zero = 0;
  final Map<int, int> map = {};
  for (var n in N) {
    map[n] = (map[n] ?? zero) + one;
  }
  if (map[one] == one &&
      map[two] == two &&
      map[three] == three &&
      map.length == three) {
    print(Yes);
  } else {
    print(No);
  }
  exit(0);
}
