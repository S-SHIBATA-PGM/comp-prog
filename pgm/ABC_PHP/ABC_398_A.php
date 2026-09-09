<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const equal = '=';
const hyphen = '-';
const two = 2;
$N = (int) trim($line);
$lr = str_repeat(hyphen, intdiv($N - two + $N % two, two));
$c = str_repeat(equal, two - $N % two);
echo $lr . $c . $lr . PHP_EOL;
exit(0);
