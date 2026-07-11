<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const two = 2;
const zero = 0;
$ABC = explode(space, trim($line));
$ABC = array_map('intval', $ABC);
$A = $ABC[zero];
$B = $ABC[one];
$C = $ABC[two];
echo ($A != $B && $B == $C ? Yes : No) . PHP_EOL;
exit(0);