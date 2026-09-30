<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const two = 2;
const zero = 0;
$S = trim($line);
echo (int) $S[zero] * (int) $S[two] . PHP_EOL;
exit(0);
