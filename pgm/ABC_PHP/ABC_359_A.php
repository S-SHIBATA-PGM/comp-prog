<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
const Takahashi = 'Takahashi';
const zero = 0;
$cnt = zero;
while (($line = fgets($stream)) !== false) {
    if (trim($line) === Takahashi) {
        $cnt++;
    }
}
fclose($stream);
echo $cnt . PHP_EOL;
exit(0);
