#!/bin/bash

fibonacci() {
  local n=$1
  if ((n <= 0)); then
    echo 0
  elif ((n == 1)); then
    echo 1
  else
    local prev1=$(fibonacci $((n - 1)))
    local prev2=$(fibonacci $((n - 2)))
    echo $((prev1 + prev2))
  fi
}

start=$(date +%s%N)

result=$(fibonacci 40)
echo "Fibonacci of 40: $result"

stop=$(date +%s%N)
duration=$(((stop - start)/1000000))

echo "Time to calculate: $duration milliseconds"