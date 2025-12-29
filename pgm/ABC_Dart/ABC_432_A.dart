import 'dart:io';

void main() {
  final List<int> ABC = stdin
      .readLineSync()!
      .split(" ")
      .map(int.parse)
      .toList();
  const String blank = "";
  ABC.sort((a, b) => b.compareTo(a));
  print(ABC.join(blank));
  exit(0);
}
