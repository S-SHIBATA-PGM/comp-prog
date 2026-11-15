<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const zero = 0;
$A = array_map('intval', explode(space, trim($line)));
$cnt = count($A);
$product = [];
for ($i = zero; $i < $cnt - one; $i++) {
    $product[] = $A[$i] * $A[$i + one];
}
echo implode(space, $product) . PHP_EOL;
exit(0);
