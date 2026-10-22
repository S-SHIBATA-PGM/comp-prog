<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const san = 'san';
$S = trim($line);
echo (str_ends_with($S, san) ? Yes : No) . PHP_EOL;
exit(0);
