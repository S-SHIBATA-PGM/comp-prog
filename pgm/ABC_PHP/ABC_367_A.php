<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
[$A, $B, $C] = array_map('intval', explode(' ', trim($line)));
echo (
    $B < $C && ($A < $B || $C < $A) ? Yes : ($C < $A && $A < $B ? Yes : No)
) . PHP_EOL;
exit(0);
