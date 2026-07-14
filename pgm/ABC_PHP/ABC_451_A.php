<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const five = 5;
$S = trim($line);
echo (strlen($S) % five ? No : Yes) . PHP_EOL;
exit(0);