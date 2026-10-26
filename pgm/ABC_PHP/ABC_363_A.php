<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
$R = (int) trim($line);
const hundred = 100;
echo hundred - $R % hundred . PHP_EOL;
exit(0);
