<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const four = 4;
const hundred = 100;
const fourHundred = 400;
const year = 365;
const leapYear = 366;
const zero = 0;
$Y = (int) trim($line);
if ($Y % four !== zero) {
    echo year . PHP_EOL;
} elseif ($Y % four === zero && $Y % hundred !== zero) {
    echo leapYear . PHP_EOL;
} elseif ($Y % hundred === zero && $Y % fourHundred !== zero) {
    echo year . PHP_EOL;
} else {
    echo leapYear . PHP_EOL;
}
exit(0);
