<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$N = (int) trim($line);
$line = fgets($stream);
$A = array_map('intval', explode(' ', trim($line)));
fclose($stream);
const two = 2;
echo array_sum(
    array_filter(
        $A,
        fn(int $a): bool => !($a % two),
        ARRAY_FILTER_USE_KEY
    )
) . PHP_EOL;
exit(0);
