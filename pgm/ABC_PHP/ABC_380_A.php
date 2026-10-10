<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const one = 1;
const two = 2;
const three = 3;
$N = trim($line);
$cnt = array_count_values(str_split($N));
echo (
    ($cnt[one] ?? 0) === one
    && ($cnt[two] ?? 0) === two
    && ($cnt[three] ?? 0) === three
    && count($cnt) === three
    ? Yes
    : No
) . PHP_EOL;
exit(0);
