<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const one = 1;
$N = intval(trim($line));
echo implode(',', range($N, one)) . PHP_EOL;
exit(0);