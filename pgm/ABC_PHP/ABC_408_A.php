<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$N, $S] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const zero = 0;
$T = array_map('intval', explode(' ', trim($line)));
$prev = zero;
$isAwake = true;
foreach ($T as $cur) {
    if ($S < $cur - $prev) {
        $isAwake = false;
        break;
    }
    $prev = $cur;
}
echo ($isAwake ? Yes : No) . PHP_EOL;
exit(0);
