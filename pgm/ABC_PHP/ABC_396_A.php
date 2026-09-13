<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const two = 2;
const three = 3;
const zero = 0;
$A = array_map('intval', explode(space, trim($line)));
$len = count($A);
$isFound = false;
for ($i = zero; $i <= $len - three; $i++) {
    if ($A[$i] === $A[$i + one] && $A[$i + one] === $A[$i + two]) {
        $isFound = true;
        break;
    }
}
echo ($isFound ? Yes : No) . PHP_EOL;
exit(0);
