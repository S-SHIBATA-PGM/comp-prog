<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[, $D] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const period = '.';
$S = trim($line);
echo substr_count($S, period) + $D . PHP_EOL;
exit(0);
