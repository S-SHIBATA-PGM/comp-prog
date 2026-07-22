<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const one = 1;
const zero = 0;
$S = trim($line);
echo ($S[zero] === $S[-one] ? Yes : No) . PHP_EOL;
exit(0);