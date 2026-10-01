<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
fclose($stream);
const UPC = 'UPC';
const zero = 0;
$S = trim($line);
echo $S[zero] . UPC . PHP_EOL;
exit(0);
