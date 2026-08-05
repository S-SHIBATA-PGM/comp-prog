<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const divisor = 100;
$D = intval(trim($line));
echo $D / divisor . PHP_EOL;
exit(0);
