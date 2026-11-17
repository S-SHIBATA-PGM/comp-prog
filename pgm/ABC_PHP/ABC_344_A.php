<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const blank = '';
const pattern = '/\|.*\|/';
const one = 1;
$S = trim($line);
echo preg_replace(pattern, blank, $S, one) . PHP_EOL;
exit(0);
