<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
const space = ' ';
const one = 1;
const zero = 0;
[$N, $L, $R] = array_map('intval', explode(space, trim($line)));
$cnt = zero;
for ($i = one; $i <= $N; $i++) {
    $line = fgets($stream);
    [$X, $Y] = array_map('intval', explode(space, trim($line)));
    if ($X <= $L && $R <= $Y) {
        $cnt++;
    }
}
fclose($stream);
echo $cnt . PHP_EOL;
exit(0);
