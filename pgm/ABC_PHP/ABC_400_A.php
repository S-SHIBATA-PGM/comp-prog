<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$A = (int) trim($line);
fclose($stream);
const fourHundred = 400;
const one = 1;
echo (fourHundred % $A ? -one : intdiv(fourHundred, $A)) . PHP_EOL;
exit(0);
