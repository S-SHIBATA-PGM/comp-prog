<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$A = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const one = 1;
$B = array_map('intval', explode(' ', trim($line)));
echo array_sum($A) - array_sum($B) + one . PHP_EOL;
exit(0);
