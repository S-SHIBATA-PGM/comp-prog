<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const percent = '%';
const dot = '.';
const f = 'f';
const thirteen = 13;
const dTwo = 2.0;
const fmt = percent . dot . thirteen . f;
$D = floatval(trim($line));
echo sprintf(fmt, M_PI * ($D / dTwo) ** dTwo) . PHP_EOL;
exit(0);