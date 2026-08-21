<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$N, $A, $B] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
$S = trim($line);
echo substr($S, $A, $N - $A - $B) . PHP_EOL;
exit(0);
