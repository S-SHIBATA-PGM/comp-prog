<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$N, $L, $R] = array_map('intval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const o = 'o';
const one = 1;
$S = trim($line);
$sub = substr($S, $L - one, $R - $L + one);
echo ($sub === str_repeat(o, strlen($sub)) ? Yes : No) . PHP_EOL;
exit(0);
