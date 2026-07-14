// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  double H = double.parse(stdin.readLineSync()!);
  const int nine = 9;
  const double additional = 12800000.0;
  print(sqrt(H * (additional + H)).toStringAsFixed(nine));
  exit(0);
}
