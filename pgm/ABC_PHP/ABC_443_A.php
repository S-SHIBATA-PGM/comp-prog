<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const s = 's';
$S = trim($line);
echo $S . s . PHP_EOL;
exit(0);