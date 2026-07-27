<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
$N = intval(trim($line));
const one = 1;
echo (one << $N) - ($N << one) . PHP_EOL;
exit(0);