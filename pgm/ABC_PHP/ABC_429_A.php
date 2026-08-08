<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const OK = 'OK';
const Too = 'Too Many Requests';
const space = ' ';
[$N, $M] = array_map('intval', explode(space, trim($line)));
for ($i = 1; $i <= $N; $i++) {
    echo ($i <= $M ? OK : Too) . PHP_EOL;
}
exit(0);
