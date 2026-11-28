<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Bat = 'Bat';
const Glove = 'Glove';
const space = ' ';
[$B, $G] = array_map('intval', explode(space, trim($line)));
echo ($B > $G ? Bat : Glove) . PHP_EOL;
exit(0);
