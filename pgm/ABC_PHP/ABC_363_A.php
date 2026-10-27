<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const hundred = 100;
$R = (int) trim($line);
echo hundred - $R % hundred . PHP_EOL;
exit(0);
