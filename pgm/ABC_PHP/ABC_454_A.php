<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
[$L, $R] = array_map('intval', explode(space, trim($line)));
echo ($R - $L + one) . PHP_EOL;
exit(0);