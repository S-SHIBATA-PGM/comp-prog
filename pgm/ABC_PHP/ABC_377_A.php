<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const A = 'A';
const B = 'B';
const C = 'C';
const target = [A, B, C];
$S = trim($line);
echo (array_all(
    target,
    fn(string $c): bool => str_contains($S, $c)
) ? Yes : No) . PHP_EOL;
exit(0);
