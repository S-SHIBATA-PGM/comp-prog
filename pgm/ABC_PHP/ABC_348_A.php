<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const success = 'o';
const fail = 'x';
const one = 1;
const three = 3;
const zero = 0;
$N = (int) trim($line);
$result = '';
for ($i = one; $i <= $N; $i++) {
    if ($i % three !== zero) {
        $result .= success;
    } else {
        $result .= fail;
    }
}
echo $result . PHP_EOL;
exit(0);
