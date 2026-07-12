<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const slash = '/';
const caret = '^';
const plus = '+';
const o = 'o';
const black = '';
const fmt = slash . caret . o . plus . slash;
$S = trim($line);
echo preg_replace(fmt, black, $S) . PHP_EOL;
exit(0);