<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
[$A, $B, $D] = array_map('intval', explode(space, trim($line)));
echo implode(space, range($A, $B, $D)) . PHP_EOL;
exit(0);
