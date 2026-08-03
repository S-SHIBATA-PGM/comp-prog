<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const thousand = 1000;
[$W, $B] = array_map('intval', explode(space, trim($line)));
echo intdiv(thousand * $W, $B) + one . PHP_EOL;
exit(0);