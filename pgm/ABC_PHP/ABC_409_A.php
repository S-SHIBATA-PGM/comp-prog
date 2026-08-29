<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$line = fgets($stream);
$S = trim($line);
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const circle = 'o';
const zero = 0;
$T = trim($line);
$isFound = false;
$len = strlen($S);
for ($i = zero; $i < $len; $i++) {
    if ($S[$i] === circle && $T[$i] === circle) {
        $isFound = true;
        break;
    }
}
echo ($isFound ? Yes : No) . PHP_EOL;
exit(0);
