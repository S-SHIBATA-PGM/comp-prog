<?php
$stream = fopen('php://stdin', 'r');
fgets($stream);
$line = fgets($stream);
fclose($stream);
const target = '#.#';
$S = trim($line);
preg_match_all('/(?=' . preg_quote(target, '/') . ')/', $S, $matche);
echo count($matche[0]) . PHP_EOL;
exit(0);
