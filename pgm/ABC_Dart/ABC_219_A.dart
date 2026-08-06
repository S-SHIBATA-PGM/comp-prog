// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final int X = int.parse(stdin.readLineSync()!);
  const String expert = 'expert';
  final List<int> rank = [40, 70, 90];
  final int? next = rank.cast<int?>().firstWhere(
    (r) => r! > X,
    orElse: () => null,
  );
  print(next != null ? next - X : expert);
  exit(0);
}
