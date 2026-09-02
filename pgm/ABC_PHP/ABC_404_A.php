<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$S = str_split(trim($line));
fclose($stream);
const a = 'a';
const z = 'z';
$missing = array_diff(range(a, z), $S);
echo reset($missing) . PHP_EOL;
exit(0);
