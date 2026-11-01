<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$N, $K, $X] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const space = ' ';
const zero = 0;
$A = array_map('intval', explode(' ', trim($line)));
$B = [];
for ($i = zero; $i <= $N; $i++) {
    if ($i === $K) {
        $B[] = $X;
    } else {
        $B[] = array_shift($A) ?? zero;
    }
}
echo implode(space, $B) . PHP_EOL;
exit(0);
