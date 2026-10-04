<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
$ABC = array_map('intval', explode(space, trim($line)));
sort($ABC);
[$A, $B, $C] = $ABC;
echo ($A === $B && $B === $C ? Yes : ($A + $B === $C ? Yes : No)) . PHP_EOL;
exit(0);
