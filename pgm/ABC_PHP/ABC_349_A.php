<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const zero = 0;
$A = array_map('intval', explode(' ', trim($line)));
$sum = zero;
foreach ($A as $a) {
    $sum += $a;
}
echo -$sum . PHP_EOL;
exit(0);
