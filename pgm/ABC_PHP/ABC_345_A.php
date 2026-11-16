<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const lt = '<';
const eq = '=';
const gt = '>';
const one = 1;
const two = 2;
$S = trim($line);
$len = strlen($S);
echo (
    str_starts_with($S, lt)
    && str_ends_with($S, gt)
    && substr($S, one, $len - two) === str_repeat(eq, $len - two)
    ? Yes
    : No
) . PHP_EOL;
exit(0);
