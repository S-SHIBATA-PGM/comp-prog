<?php
$stream = fopen('php://stdin', 'r');
const one = 1;
const zero = 0;
$i = one;
$cnt = zero;
while (($line = fgets($stream)) !== false) {
    $S = trim($line);
    if (strlen($S) === $i) {
        $cnt++;
    }
    $i++;
}
fclose($stream);
echo $cnt . PHP_EOL;
exit(0);
