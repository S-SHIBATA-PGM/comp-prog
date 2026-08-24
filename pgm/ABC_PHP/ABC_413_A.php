<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[, $M] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
$A = array_map('intval', explode(space, trim($line)));
echo (array_sum($A) <= $M ? Yes : No) . PHP_EOL;
exit(0);
