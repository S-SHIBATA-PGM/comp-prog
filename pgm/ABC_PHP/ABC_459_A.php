<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const HelloWorld = 'HelloWorld';
const blank = '';
const one = 1;
$X = intval(trim($line));
echo substr_replace(HelloWorld, blank, $X - one, one) . PHP_EOL;
exit(0);