<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const one = 1;
const two = 2;
const eight = 8;
const zero = 0;
$world = (int) trim($line)[zero];
$stage = (int) trim($line)[two];
if ($stage === eight) {
    $world += one;
    $stage = one;
} else {
    $stage += one;
}
echo $world . trim($line)[one] . $stage . PHP_EOL;
exit(0);
