<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const one = 1;
const two = 2;
$N = intval(trim($line));
echo intdiv(($N + one) * $N, two) . PHP_EOL;
exit(0);