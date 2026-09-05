// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
// import 'dart:math';
// import 'dart:typed_data';

void main() {
  final List<String> S = stdin.readLineSync()!.split('');
  const String Won = 'Won';
  const String Lost = 'Lost';
  const int one = 1;
  print(S.toSet().length == one ? Won : Lost);
  exit(0);
}
