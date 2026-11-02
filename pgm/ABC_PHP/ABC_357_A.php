<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[, $M] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const zero = 0;
$H = array_map('intval', explode(' ', trim($line)));
$cnt = zero;
$sum = zero;
foreach ($H as $h) {
    $sum += $h;
    if ($sum > $M) {
        break;
    }
    $cnt++;
}
echo $cnt . PHP_EOL;
exit(0);
