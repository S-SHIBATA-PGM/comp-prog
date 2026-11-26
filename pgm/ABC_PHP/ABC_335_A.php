<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
$S = trim($line);
const s_four = '4';
const one = 1;
const zero = 0;
echo substr($S, zero, -one) . s_four . PHP_EOL;
exit(0);
