// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final [int A, int B] = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  const int solid15 = 15;
  const int solid10 = 10;
  const int solid3 = 3;
  const int fat8 = 8;
  const int fat3 = 3;
  const int one = 1;
  const int two = 2;
  const int three = 3;
  const int four = 4;
  final int AB = A + B;
  print(
    solid15 <= AB && fat8 <= B
        ? one
        : solid10 <= AB && fat3 <= B
        ? two
        : solid3 <= AB
        ? three
        : four,
  );
  exit(0);
}
