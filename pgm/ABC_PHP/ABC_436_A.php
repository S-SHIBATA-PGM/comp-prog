<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$N = intval(trim($line));
$line = fgets($stream);
fclose($stream);
const o = 'o';
$S = trim($line);
echo str_pad($S, $N, o, STR_PAD_LEFT) . PHP_EOL;
exit(0);