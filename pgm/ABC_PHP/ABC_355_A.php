<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const two = 2;
const three = 3;
[$A, $B] = array_map('intval', explode(space, trim($line)));
$filtered = array_filter([one, two, three], fn($x) => $x !== $A && $x !== $B);
echo ($A === $B ? -one : reset($filtered)) . PHP_EOL;
exit(0);
