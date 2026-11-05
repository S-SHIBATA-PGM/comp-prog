<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const one = 1;
const base = 2;
$H = (int) trim($line);
$day = one;
$e = one;
$value = one;
while ($value <= $H) {
    $e *= base;
    $value += $e;
    $day += one;
}
echo $day . PHP_EOL;
exit(0);
