<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const zero = 0;
[$X, $Y, $Z] = array_map('intval', explode(space, trim($line)));
// 計算過程
// X + k = Z * (Y + k)
// X + k = Z * Y + Z * k
// k - Z * k = Z * Y - X
// k(1 - Z) = Z * Y - X
// k(Z - 1) = X - Z * Y
// k = (X - Z * Y) / (Z - 1)
echo (($X - $Y * $Z) >= zero && ($X - $Y * $Z) % ($Z - one) == zero
    ? Yes
    : No) . PHP_EOL;
exit(0);