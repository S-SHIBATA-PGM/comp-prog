<?php
$stream = fopen("php://stdin", "r");
$line = fgets($stream);
fclose($stream);
const Yes = "Yes";
const No = "No";
const one = 1;
const nine = 9;
const sixteen = 16;
const zero = 0;
$arr = explode(" ", trim($line));
$X = intval($arr[zero]);
$Y = intval($arr[one]);
echo (nine * $X == sixteen * $Y ? Yes : No) . PHP_EOL;
exit(0);