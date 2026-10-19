<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
[$L, $R] = array_map('intval', explode(' ', trim($line)));
const Yes = 'Yes';
const No = 'No';
const Invalid = 'Invalid';
const one = 1;
const zero = 0;
echo ($L === one && $R === zero
    ? Yes
    : ($L === zero && $R === one ? No : Invalid)) . PHP_EOL;
exit(0);
