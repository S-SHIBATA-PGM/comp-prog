<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const space = ' ';
const nine = 9;
const zero = 0;
[$A, $B] = array_map('intval', explode(space, trim($line)));
for ($i = zero; $i <= nine; $i++) {
    if ($i !== $A + $B) {
        echo $i . PHP_EOL;
        break;
    }
}
exit(0);
