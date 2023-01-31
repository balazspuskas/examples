import kotlin.system.measureTimeMillis

fun fibonacci(n: Int): Int {
    return when {
        n <= 1 -> n
        else -> fibonacci(n - 1) + fibonacci(n - 2)
    }
}

fun main(args: Array<String>) {
    val start = System.currentTimeMillis()

    val result = fibonacci(40)
    println("Fibonacci of 40: $result")

    val end = System.currentTimeMillis()
    val time = end - start
    println("Time to calculate: $time ms")
}