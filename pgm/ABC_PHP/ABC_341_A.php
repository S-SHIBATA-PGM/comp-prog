<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const blank = '';
const one = 1;
const two = 2;
const zero = 0;
$N = (int) trim($line);
$indices = range(zero, two * $N);
echo implode(
    blank,
    array_map(
        fn($i) => ($i % two !== zero)
            ? zero
            : one,
        $indices
    )
) . PHP_EOL;
exit(0);
