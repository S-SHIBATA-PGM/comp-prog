<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const L = 'L';
const o = 'o';
const n = 'n';
const g = 'g';
$N = (int) trim($line);
echo L . str_repeat(o, $N) . n . g . PHP_EOL;
exit(0);
