<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const end = 349;
const cancel = 316;
const three = 3;
const zero = 0;
$S = trim($line);
$edition = (int) substr($S, three, three);
echo ($edition <= end
    && $edition !== cancel
    && $edition !== zero
    ? Yes
    : No) . PHP_EOL;
exit(0);
