<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const sTwo = '2';
const zero = 0;
$S = trim($line);
echo str_repeat(sTwo, substr_count($S, sTwo)) . PHP_EOL;
exit(0);
