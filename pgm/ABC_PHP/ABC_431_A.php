<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
[$H, $B] = array_map('intval', explode(space, trim($line)));
echo max($H, $B) - $B . PHP_EOL;
exit(0);
