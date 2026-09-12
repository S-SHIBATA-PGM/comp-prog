<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const dHigh = 38.0;
const dFever = 37.5;
const high = 1;
const fever = 2;
const normal = 3;
$X = (float) trim($line);
echo (dHigh <= $X ? high : (dFever <= $X ? fever : normal)) . PHP_EOL;
exit(0);
