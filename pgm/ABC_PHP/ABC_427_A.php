<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const blank = '';
const one = 1;
const two = 2;
$S = trim($line);
echo substr_replace(
    $S,
    blank,
    intdiv(strlen($S) + one, two) - one,
    one
) . PHP_EOL;
exit(0);
