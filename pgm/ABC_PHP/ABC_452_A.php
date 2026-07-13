<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const Yes = 'Yes';
const No = 'No';
const slash = '/';
const M1 = 1;
const M3 = 3;
const M5 = 5;
const M7 = 7;
const M9 = 9;
const D3 = 3;
const D5 = 5;
const D7 = 7;
const D9 = 9;
[$M, $D] = array_map('intval', explode(' ', trim($line)));
$gosekku = [
    M1 . slash . D7 => true,
    M3 . slash . D3 => true,
    M5 . slash . D5 => true,
    M7 . slash . D7 => true,
    M9 . slash . D9 => true,
];
echo (isset($gosekku[$M . slash . $D]) ? Yes : No) . PHP_EOL;
exit(0);