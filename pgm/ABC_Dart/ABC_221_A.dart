// import 'dart:collection';
// import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'dart:typed_data';

void main() {
  var [int A, int B] = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  const int thirtyTwo = 32;
  print(pow(thirtyTwo, A - B));
  exit(0);
}
