<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const period = '.';
$S = array_map('strval', explode(period, trim($line)));
echo $S[array_key_last($S)] . PHP_EOL;
exit(0);
