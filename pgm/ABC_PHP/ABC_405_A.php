<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
[$R, $X] = array_map('intval', explode(' ', trim($line)));
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const one = 1;
const one_thousand_two_hundred = 1200;
const one_thousand_six_hundred = 1600;
const two_thousand_three_hundred_ninety_nine = 2399;
const two_thousand_nine_hundred_ninety_nine = 2999;
$lower = [
    one_thousand_six_hundred,
    one_thousand_two_hundred
];
$upper = [
    two_thousand_nine_hundred_ninety_nine,
    two_thousand_three_hundred_ninety_nine
];
echo ($lower[$X - one] <= $R && $R <= $upper[$X - one] ? Yes : No) . PHP_EOL;
exit(0);
