<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const sick = 'sick';
const fine = 'fine';
const space = ' ';
const one = 1;
const two = 2;
const three = 3;
const four = 4;
const zero = 0;
$S = array_map('strval', explode(space, trim($line)));
echo $S[zero] === sick && $S[one] === sick
    ? one
    : (
        $S[zero] === sick && $S[one] === fine
        ? two
        : (
            $S[zero] === fine && $S[one] === sick
            ? three
            : four
        )
    ) . PHP_EOL;
exit(0);
