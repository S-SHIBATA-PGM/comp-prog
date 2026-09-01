<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$A, $B, $C, $D] = array_map('intval', explode(' ', trim($line)));
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const Hi = '!H:i';
const fmt = '%02d:%02d';
const UTC = 'UTC';
$AB = DateTimeImmutable::createFromFormat(
    Hi,
    sprintf(fmt, $A, $B),
    new DateTimeZone(UTC)
);
$CD = DateTimeImmutable::createFromFormat(
    Hi,
    sprintf(fmt, $C, $D),
    new DateTimeZone(UTC)
);
echo ($CD < $AB ? Yes : No) . PHP_EOL;
exit(0);
