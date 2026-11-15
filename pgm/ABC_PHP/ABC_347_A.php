<?php
$stream = fopen('php://stdin', 'r');
const space = ' ';
const zero = 0;
$line = fgets($stream);
[, $K] = array_map('intval', explode(space, trim($line)));
$line = fgets($stream);
fclose($stream);
$A = array_map('intval', explode(space, trim($line)));
echo implode(
    space,
    array_map(
        fn($a) => intdiv($a, $K),
        array_filter($A, fn($a) => $a % $K === zero)
    )
) . PHP_EOL;
exit(0);
