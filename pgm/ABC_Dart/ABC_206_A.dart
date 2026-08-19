// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final double N = double.parse(stdin.readLineSync()!);
  const String high = ":(";
  const String soso = "so-so";
  const String yay = "Yay!";
  const int price = 206;
  const double tax = 1.08;
  final int amount = (N * tax).floor();
  print(switch (amount) {
    > price => high,
    == price => soso,
    _ => yay,
  });
  exit(0);
}
