<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const two = 2;
[$N, $M] = array_map('intval', explode(space, trim($line)));
echo ($M <= intdiv(($N + one), two) ? Yes : No). PHP_EOL;
exit(0);