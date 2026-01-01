import 'dart:io';
// import 'dart:math';

void main() {
  final [String X, String Y] = stdin.readLineSync()!.split(' ');
  final List<String> OS = ['Ocelot', 'Serval', 'Lynx'];
  const String Yes = 'Yes';
  const String No = 'No';
  print(OS.indexOf(Y) <= OS.indexOf(X) ? Yes : No);
  exit(0);
}
