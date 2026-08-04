<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const blank = '';
const space = ' ';
$ABC = array_map('intval', explode(space, trim($line)));
rsort($ABC, SORT_NUMERIC);
echo implode(blank, $ABC) . PHP_EOL;
exit(0);
