<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
const Yes = 'Yes';
const No = 'No';
const blank = '';
const space = ' ';
const zero = 0;
$N = (int) trim($line);
$S = array_fill(zero, $N, blank);
for ($i = zero; $i < $N; $i++) {
    $S[$i] = trim(fgets($stream));
}
$line = fgets($stream);
fclose($stream);
[$X, $Y] = array_map('strval', explode(space, trim($line)));
$X = (int) $X;
echo ($S[--$X] === $Y ? Yes : No) . PHP_EOL;
exit(0);
