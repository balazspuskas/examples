use std::time::Instant;

fn fibonacci(n: u64) -> u64 {
    match n {
        0 => 0,
        1 => 1,
        n => fibonacci(n - 1) + fibonacci(n - 2),
    }
}

fn main() {
    let start = Instant::now();

    let result = fibonacci(40);
    println!("Fibonacci of 40: {}", result);

    let elapsed = start.elapsed();
    println!("Time to calculate: {:?}", elapsed);
}