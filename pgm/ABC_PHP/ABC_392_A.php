<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const two = 2;
const zero = 0;
$A = array_map('intval', explode(space, trim($line)));
sort($A);
echo ($A[zero] * $A[one] === $A[two] ? Yes : No) . PHP_EOL;
exit(0);
