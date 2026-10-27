<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$R, $G, $B] = array_map('intval', explode(' ', $line));
$line = fgets($stream);
fclose($stream);
const Red = "Red";
const Green = "Green";
const Blue = "Blue";
$C = trim($line);
$rgb = [
    Red => $R,
    Green => $G,
    Blue => $B,
];
unset($rgb[$C]);
echo min($rgb) . PHP_EOL;
exit(0);
