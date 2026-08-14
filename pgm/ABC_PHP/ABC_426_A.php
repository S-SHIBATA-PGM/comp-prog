<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
[$X, $Y] = array_map('strval', explode(space, trim($line)));
$OS = ['Ocelot', 'Serval', 'Lynx'];
echo (array_search($Y, $OS, true) <= array_search($X, $OS, true)
    ? Yes
    : No) . PHP_EOL;
exit(0);
