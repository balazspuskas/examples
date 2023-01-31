let start = new Date().getTime();

function fibonacci(n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

let result = fibonacci(40);
console.log(`Fibonacci of 40: ${result}`);

let end = new Date().getTime();
let time = end - start;
console.log(`Time to calculate: ${time} ms`);