<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
[$A, $B, $C, $D] = array_map('intval', explode(space, trim($line)));
echo ($A <= $C && $D < $B ? Yes : No) . PHP_EOL;
exit(0);
