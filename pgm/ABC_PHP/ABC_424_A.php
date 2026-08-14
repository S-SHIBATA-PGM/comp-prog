<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const two = 2;
[$a, $b, $c] = array_map('intval', explode(space, trim($line)));
echo (count(array_unique([$a, $b, $c])) <= two ? Yes : No) . PHP_EOL;
exit(0);
