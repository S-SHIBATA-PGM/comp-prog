<?php
$stream = fopen('php://stdin', 'r');
$line = fgets($stream);
$arr = array_map('strval', explode(' ', trim($line)));
$line = fgets($stream);
fclose($stream);
$S = trim($line);
[, $c1, $c2] = $arr;
$pattern = '/[^' . preg_quote($c1, '/') . ']/';
echo preg_replace($pattern, $c2, $S) . PHP_EOL;
exit(0);
