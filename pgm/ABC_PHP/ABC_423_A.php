<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const thousand = 1000;
[$X, $C] = array_map('intval', explode(space, trim($line)));
echo thousand * intdiv($X, (thousand + $C)) . PHP_EOL;
exit(0);
