<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const R = 'R';
const M = 'M';
const Yes = 'Yes';
const No = 'No';
$S = trim($line);
echo (strpos($S, R) < strpos($S, M) ? Yes : No) . PHP_EOL;
exit(0);
