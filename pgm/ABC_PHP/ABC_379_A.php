<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const two = 2;
const zero = 0;
$N = trim($line);
echo
$N[one] . $N[two] . $N[zero] . space . $N[two] . $N[zero] . $N[one] . PHP_EOL;
exit(0);
