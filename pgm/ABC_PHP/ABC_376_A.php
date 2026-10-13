<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[, $C] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const zero = 0;
$T = array_map('intval', explode(' ', trim($line)));
$prev   = -$C;
$candy = zero;
foreach ($T as $t) {
    if ($t - $prev >= $C) {
        $candy++;
        $prev = $t;
    }
}
echo $candy . PHP_EOL;
exit(0);
