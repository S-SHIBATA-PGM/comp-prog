<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const zero = 0;
$arr = explode(space, trim($line));
$A = intval($arr[zero]);
$D = intval($arr[one]);
echo ($A <= $D ? Yes : No) . PHP_EOL;
exit(0);