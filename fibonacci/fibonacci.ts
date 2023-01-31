function fibonacci(n: number): number {
    if (n <= 0) {
      return 0;
    } else if (n === 1) {
      return 1;
    } else {
      return fibonacci(n - 1) + fibonacci(n - 2);
    }
  }
  
  const start = performance.now();
  
  const result = fibonacci(40);
  console.log(`Fibonacci of 40: ${result}`);
  
  const stop = performance.now();
  const duration = stop - start;
  
  console.log(`Time to calculate: ${duration} milliseconds`);  