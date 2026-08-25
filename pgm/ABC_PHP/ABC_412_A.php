<?php
$arr = file('php://stdin', FILE_IGNORE_NEW_LINES);
const space = ' ';
const one   = 1;
const zero  = 0;
$N = (int) $arr[zero];
$cnt = zero;
for ($i = one; $i <= $N; $i++) {
    [$A, $B] = array_map('intval', explode(space, $arr[$i]));
    if ($A < $B) {
        $cnt++;
    }
}
echo $cnt . PHP_EOL;
exit(0);
