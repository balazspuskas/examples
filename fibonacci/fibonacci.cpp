#include <iostream>
#include <chrono>

using namespace std;
using namespace std::chrono;

long long fibonacci(int n) {
    if (n <= 0) {
        return 0;
    } else if (n == 1) {
        return 1;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

int main() {
    auto start = high_resolution_clock::now();

    long long result = fibonacci(40);
    cout << "Fibonacci of 40: " << result << endl;

    auto stop = high_resolution_clock::now();
    auto duration = duration_cast<microseconds>(stop - start);

    cout << "Time to calculate: " << duration.count() << " microseconds" << endl;

    return 0;
}