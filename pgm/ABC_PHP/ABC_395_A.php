<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const two = 2;
const zero = 0;
$A = array_map('intval', explode(space, trim($line)));
$len = count($A);
echo (array_all(range(zero, $len - two), fn($i) => $A[$i] < $A[$i + one])
    ? Yes
    : No) . PHP_EOL;
exit(0);
