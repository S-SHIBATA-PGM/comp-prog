<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$A, $B] = array_map('intval', explode(' ', trim($line)));
fclose($stream);
echo (int) round($A / $B) . PHP_EOL;
exit(0);
