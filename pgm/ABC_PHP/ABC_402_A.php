<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$S = trim($line);
fclose($stream);
const blank = '';
const caret = '^';
const hypen = '-';
const lbrack = '[';
const rbrack = ']';
const slash = '/';
const A = 'A';
const Z = 'Z';
const pattern = slash . lbrack . caret . A . hypen . Z . rbrack . slash;
echo preg_replace(pattern, blank, $S) . PHP_EOL;
exit(0);
