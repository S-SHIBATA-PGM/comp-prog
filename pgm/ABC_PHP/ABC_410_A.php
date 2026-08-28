<?php
$arr = file('php://stdin', FILE_IGNORE_NEW_LINES);
const SPACE = ' ';
const one = 1;
const two = 2;
const zero = 0;
$N = (int) $arr[zero];
$A = array_map('intval', explode(SPACE, $arr[one]));
$K = (int) $arr[two];
echo count(array_filter($A, fn(int $a): bool => $a >= $K)) . PHP_EOL;
exit(0);
