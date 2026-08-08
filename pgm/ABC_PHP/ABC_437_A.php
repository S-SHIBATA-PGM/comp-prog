<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const twelve = 12;
[$A, $B] = array_map('intval', explode(space, trim($line)));
echo twelve * $A + $B . PHP_EOL;
exit(0);
