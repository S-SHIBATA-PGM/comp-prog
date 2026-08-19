<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const tea = 'tea';
$S = trim($line);
echo (str_ends_with($S, tea) ? Yes : No) . PHP_EOL;
exit(0);
