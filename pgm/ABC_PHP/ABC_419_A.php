<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Unknown = 'Unknown';
const red = 'red';
const blue = 'blue';
const green = 'green';
const SSS = 'SSS';
const FFF = 'FFF';
const MMM = 'MMM';
$S = trim($line);
$language = [
    red => SSS,
    blue => FFF,
    green => MMM,
];
echo ($language[$S] ?? Unknown) . PHP_EOL;
exit(0);
