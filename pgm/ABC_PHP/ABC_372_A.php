<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const regex = '/\.+/';
const blank = '';
$S = trim($line);
echo preg_replace(regex, blank, $S) . PHP_EOL;
exit(0);
