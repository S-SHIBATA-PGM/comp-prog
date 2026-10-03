<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const two = 2;
[$A, $B] = array_map('intval', explode(space, trim($line)));
echo pow($A + $B, two) . PHP_EOL;
exit(0);
