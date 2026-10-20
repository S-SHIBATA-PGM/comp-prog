<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const two = 2;
const three = 3;
const zero = 0;
[$A, $B] = array_map('intval', explode(space, trim($line)));
echo ($A === $B ? one : (abs($A - $B) % two === zero ? three : two)) . PHP_EOL;
exit(0);
