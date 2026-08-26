<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$P = trim($line);
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
$L = (int) trim($line);
echo (strlen($P) >= $L ? Yes : No) . PHP_EOL;
exit(0);
