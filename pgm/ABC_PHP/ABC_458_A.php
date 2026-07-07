<?php
$stream = fopen('php://stdin', 'r');
$S = trim(fgets($stream));
$N = intval(trim(fgets($stream)));
fclose($stream);
const two = 2;
echo substr($S, $N, strlen($S) - ($N * two)) . PHP_EOL;
exit(0);