tic

function y = fibonacci(n)
    if n <= 1
        y = n;
    else
        y = fibonacci(n-1) + fibonacci(n-2);
    end
end

result = fibonacci(40);
fprintf('Fibonacci of 40: %d\n', result);

toc