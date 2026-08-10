<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
const space = ' ';
[$S, $A, $B, $X] = array_map('intval', explode(space, trim($line)));
echo $S * $A * intdiv($X, ($A + $B)) + $S * min($A, $X % ($A + $B)) . PHP_EOL;
exit(0);
