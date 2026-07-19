<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Of = 'Of';
$S = trim($line);
echo Of . lcfirst($S) . PHP_EOL;
exit(0);