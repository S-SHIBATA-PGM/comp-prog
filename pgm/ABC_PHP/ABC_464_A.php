<?php
$stream = fopen("php://stdin", "r");
$line = fgets($stream);
fclose($stream);
const East = "East";
const West = "West";
const E = "E";
$S = trim($line);
$cnt = substr_count($S, E);
echo ($cnt > strlen($S) - $cnt ? East : West) . PHP_EOL;
exit(0);