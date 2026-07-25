<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const slash = '/';
const pipe = '|';
const i = 'i';
const j = 'j';
const fmt = slash . i . pipe . j . slash;
$S = trim($line);
echo preg_match_all(fmt, $S) . PHP_EOL;
exit(0);