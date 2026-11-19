<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const only = 1;
const one = 1;
const zero = 0;
$S = trim($line);
$chars = str_split($S);
$counts = array_count_values($chars);
foreach ($counts as $c => $cnt) {
    if ($cnt === only) {
        echo (strpos($S, (string) $c) + one) . PHP_EOL;
        break;
    }
}
exit(0);
