<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$N = (int) trim($line);
const Yes = 'Yes';
const No = 'No';
const sweet = 'sweet';
const salty  = 'salty ';
const one = 1;
const two = 2;
const zero = 0;
$S = [];
for ($i = zero; $i < $N; $i++) {
    $S[] = trim(fgets($stream));
}
fclose($stream);
$hasConsecutiveSweet = false;
for ($i = zero; $i < $N - two; $i++) {
    if ($S[$i] === sweet && $S[$i + one] === sweet) {
        $hasConsecutiveSweet = true;
        break;
    }
}
echo ($hasConsecutiveSweet ? No : Yes) . PHP_EOL;
exit(0);
