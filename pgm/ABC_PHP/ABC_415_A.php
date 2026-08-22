<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$N = (int) trim($line);
$line = fgets($stream);
$A = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
$X = (int) trim($line);
echo (in_array($X, $A, true) ? Yes : No) . PHP_EOL;
exit(0);
