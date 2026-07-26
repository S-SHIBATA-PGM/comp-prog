<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const hundred = 100;
[$P, $Q] = array_map('intval', explode(space, trim($line)));
$line = fgets($stream);
fclose($stream);
[$X, $Y] = array_map('intval', explode(space, trim($line)));
echo ($P <= $X && $X <= $P + hundred - one &&
    $Q <= $Y && $Y <= $Q + hundred - one ? Yes : No) . PHP_EOL;
exit(0);