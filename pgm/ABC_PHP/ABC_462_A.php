<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const pattern = '/[^0-9]/';
const blank = '';
$S = trim($line);
echo (preg_replace(pattern, blank, $S)) . PHP_EOL;
exit(0);