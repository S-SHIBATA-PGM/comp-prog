<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const one = 1;
$S = str_split(trim($line));
echo (count(array_unique($S)) === one ? Yes : No) . PHP_EOL;
exit(0);