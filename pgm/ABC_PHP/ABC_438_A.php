<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const one = 1;
const seven = 7;
[$D, $F] = array_map('intval', explode(space, trim($line)));
echo ($F + seven * (intdiv(($D - $F), seven) + one) - one) % $D + one . PHP_EOL;
exit(0);