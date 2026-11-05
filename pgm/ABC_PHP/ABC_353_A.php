<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$N = (int) trim($line);
$line = fgets($stream);
$H = array_map('intval', explode(' ', trim($line)));
fclose($stream);
const one = 1;
const zero = 0;
$idx = -one;
$H1 = $H[zero];
for ($i = zero; $i < $N; $i++) {
    if ($H[$i] > $H1) {
        $idx = $i + one;
        break;
    }
}
echo $idx . PHP_EOL;
exit(0);
