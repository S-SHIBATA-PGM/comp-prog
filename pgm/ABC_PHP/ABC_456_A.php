<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = "Yes";
const No = "No";
const one = 1;
const three = 3;
const six = 6;
$X = intval(trim($line));
echo (one * three <= $X && $X <= six * three ? Yes : No) . PHP_EOL;
exit(0);