// import 'dart:collection';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

typedef RGB = ({String key, int value});

void main() {
  final [int R, int G, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  final String C = stdin.readLineSync()!;
  const String Red = 'Red';
  const String Green = 'Green';
  const String Blue = 'Blue';
  final List<RGB> rgb = [
    (key: Red, value: R),
    (key: Green, value: G),
    (key: Blue, value: B),
  ];
  print(
    rgb.where((item) => item.key != C).map((item) => item.value).reduce(min),
  );
  exit(0);
}
