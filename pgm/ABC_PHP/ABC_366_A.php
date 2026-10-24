<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const two = 2;
[$N, $T, $A] = array_map('intval', explode(' ', trim($line)));
echo (max($T, $A) > intdiv($N, two) ? Yes : No) . PHP_EOL;
exit(0);
