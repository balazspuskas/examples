<?php

$start = microtime(true);

function fibonacci($n) {
    if ($n <= 0) {
        return 0;
    } elseif ($n == 1) {
        return 1;
    } else {
        return fibonacci($n - 1) + fibonacci($n - 2);
    }
}

$result = fibonacci(40);
echo "Fibonacci of 40: " . $result . "\n";

$elapsed = microtime(true) - $start;
echo "Time to calculate: " . $elapsed . " seconds\n";

?>