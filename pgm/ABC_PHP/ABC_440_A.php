<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
[$X, $Y] = array_map('intval', explode(space, trim($line)));
echo $X * one << $Y . PHP_EOL;
exit(0);
