<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$S = (int) trim($line);
fclose($stream);
const Success = 'Success';
const Failure = 'Failure';
const twoHundred = 200;
const twoHundredNinetyNine = 299;
echo (twoHundred <= $S && $S <= twoHundredNinetyNine
    ? Success
    : Failure) . PHP_EOL;
exit(0);
