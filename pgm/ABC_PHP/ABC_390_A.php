<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const space = ' ';
const one = 1;
const two = 2;
const zero = 0;
$A = array_map('intval', explode(space, trim($line)));
$len = count($A);
$invertedIndice = [];
for ($i = zero; $i < $len - one; $i++) {
    if ($A[$i] > $A[$i + one]) {
        $invertedIndice[] = $i;
    }
}
if (count($invertedIndice) === one) {
    $idx = $invertedIndice[zero];
    $swap = $A;
    [$swap[$idx], $swap[$idx + one]] = [$swap[$idx + one], $swap[$idx]];
    echo (
        array_all(
            range(zero, $len - two),
            fn(int $i): bool => $swap[$i] < $swap[$i + one]
        )
        ? Yes : No
    ) . PHP_EOL;
} else {
    echo No . PHP_EOL;
}
exit(0);
