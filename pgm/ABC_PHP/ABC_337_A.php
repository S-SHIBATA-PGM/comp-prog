<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$N = (int) trim($line);
const Takahashi = 'Takahashi';
const Aoki = 'Aoki';
const Draw = 'Draw';
const space = ' ';
const one = 1;
const zero = 0;
$X = [];
$Y = [];
for ($i = zero; $i < $N; $i++) {
    $line = fgets($stream);
    [$xVal, $yVal] = array_map('intval', explode(space, $line));
    $X[] = $xVal;
    $Y[] = $yVal;
}
fclose($stream);
$sumX = array_sum($X);
$sumY = array_sum($Y);
echo ($sumX > $sumY ? Takahashi : ($sumX < $sumY ? Aoki : Draw)) . PHP_EOL;
exit(0);
