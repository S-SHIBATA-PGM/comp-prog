<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const one = 1;
const two = 2;
const zero = 0;
$N = trim($line);
$cubes = zero;
for ($i = one; $i <= $N; $i++) {
    $cube = $i * $i * $i;
    if ($i % two !== zero) {
        $cubes -= $cube;
    } else {
        $cubes += $cube;
    }
}
echo $cubes . PHP_EOL;
exit(0);
