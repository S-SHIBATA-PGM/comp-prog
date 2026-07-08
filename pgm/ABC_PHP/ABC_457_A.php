<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
$X = intval(trim(fgets($stream)));
fclose($stream);
const space = ' ';
const one = 1;
$A = explode(space, trim($line));
$A = array_map('intval', $A);
echo $A[$X - one] . PHP_EOL;
exit(0);