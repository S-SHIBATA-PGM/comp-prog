<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
$S = array_map('strval', explode(' ', trim($line)));
const gt = '>';
const A = 'A';
const B = 'B';
const C = 'C';
const one = 1;
const two = 2;
const zero = 0;

function rankABC(string $s, string $a, string $b, array &$abc): void
{
    $indexA = array_search($a, $abc, true);
    $indexB = array_search($b, $abc, true);

    if ($s === gt) {
        if ($indexA > $indexB) {
            array_splice($abc, $indexA, one);
            array_splice($abc, $indexB, zero, [$a]);
        }
    } else {
        if ($indexA < $indexB) {
            array_splice($abc, $indexB, one);
            array_splice($abc, $indexA, zero, [$b]);
        }
    }
}

$abc = [A, B, C];
rankABC($S[zero], A, B, $abc);
rankABC($S[one], A, C, $abc);
rankABC($S[two], B, C, $abc);
echo $abc[one] . PHP_EOL;
exit(0);
