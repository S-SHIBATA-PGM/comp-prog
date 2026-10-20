<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const Invalid = 'Invalid';
const one = 1;
const zero = 0;
[$L, $R] = array_map('intval', explode(' ', trim($line)));
echo ($L === one && $R === zero
    ? Yes
    : ($L === zero && $R === one ? No : Invalid)) . PHP_EOL;
exit(0);
