<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const slash = '/';
const caret = '^';
const asterisk = '*';
const dollar = '$';
const one = 1;
const two = 2;
const zero = 0;
$S = trim($line);
$parts = explode(slash, $S);
echo (
    count($parts) === two
    && strlen($parts[zero]) === strlen($parts[one])
    && preg_match(
        slash . caret . one . asterisk . dollar . slash,
        $parts[zero]
    ) === one
    && preg_match(
        slash . caret . two . asterisk . dollar . slash,
        $parts[one]
    ) === one
    ? Yes
    : No
) . PHP_EOL;
exit(0);
