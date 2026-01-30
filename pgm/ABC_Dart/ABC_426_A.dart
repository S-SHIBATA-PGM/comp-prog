import 'dart:io';
// import 'dart:math';

void main() {
  final [String X, String Y] = stdin.readLineSync()!.split(' ');
  const Ocelot = 'Ocelot';
  const String Serval = 'Serval';
  const String Lynx = 'Lynx';
  const List<String> OS = [Ocelot, Serval, Lynx];
  const String Yes = 'Yes';
  const String No = 'No';
  print(OS.indexOf(Y) <= OS.indexOf(X) ? Yes : No);
  exit(0);
}
