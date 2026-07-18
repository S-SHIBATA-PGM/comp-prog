<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
const space = ' ';
const one = 1;
const zero = 0;
[$N, $X] = array_map('intval', explode(space, trim($line)));
$line = fgets($stream);
fclose($stream);
$A = explode(space, trim($line));
$len = count($A);
for ($i = zero; $i < $len; $i++) {
    if ($A[$i] < $X) {
        $X = $A[$i];
        echo one . PHP_EOL;
    } else {
        echo zero . PHP_EOL;
    }
}
exit(0);