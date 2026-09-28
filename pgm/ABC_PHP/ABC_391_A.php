<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const N = 'N';
const E = 'E';
const W = 'W';
const S = 'S';
const NEWS = [
    N => S,
    E => W,
    W => E,
    S => N,
];
$D = trim($line);
echo strtr($D, NEWS) . PHP_EOL;
exit(0);
