<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const AtCoder = 'AtCoder';
const Land = 'Land';
const Yes = 'Yes';
const No = 'No';
[$S, $T] = array_map('strval', explode(' ', trim($line)));
echo ($S === AtCoder && $T === Land ? Yes : No) . PHP_EOL;
exit(0);
