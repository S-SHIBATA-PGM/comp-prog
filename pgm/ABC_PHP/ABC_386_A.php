<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const two = 2;
const three = 3;
const zero = 0;
[$A, $B, $C, $D] = array_map('intval', explode(space, trim($line)));
$cnt = array_count_values([$A, $B, $C, $D]);
$threeCard = zero;
$pair = zero;
foreach ($cnt as $c) {
    if ($c === three) {
        $threeCard++;
        break;
    } elseif ($c === two) {
        $pair++;
    }
}
echo ($threeCard === one || $pair === two ? Yes : No) . PHP_EOL;
exit(0);
