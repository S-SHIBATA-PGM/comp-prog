<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
[, $X, $Y, $Z] = array_map('intval', explode(' ', trim($line)));
echo (min($X, $Y) < $Z && $Z < max($X, $Y) ? Yes : No) . PHP_EOL;
exit(0);
