<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$N = (int) trim($line);
const space = ' ';
const zero = 0;
$time  = zero;
$water = zero;
for ($i = zero; $i < $N; $i++) {
    $line = fgets($stream);
    [$t, $v] = array_map('intval', explode(space, trim($line)));
    $water = max(zero, $water - $t + $time);
    $water += $v;
    $time = $t;
}
fclose($stream);
echo $water . PHP_EOL;
exit(0);
