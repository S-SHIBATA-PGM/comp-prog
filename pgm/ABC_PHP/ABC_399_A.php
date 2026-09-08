<?php
$arr = file('php://stdin', FILE_IGNORE_NEW_LINES);
const one = 1;
const two = 2;
const zero = 0;
$S = $arr[one];
$T = $arr[two];
$len = strlen($S);
$cnt = zero;
for ($i = zero; $i < $len; $i++) {
    if ($S[$i] !== $T[$i]) {
        $cnt++;
    }
}
echo $cnt . PHP_EOL;
exit(0);
