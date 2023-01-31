unsigned long start, end, time;

unsigned long fibonacci(unsigned int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void setup() {
  Serial.begin(9600);
  start = millis();
  
  unsigned long result = fibonacci(40);
  Serial.print("Fibonacci of 40: ");
  Serial.println(result);
  
  end = millis();
  time = end - start;
  Serial.print("Time to calculate: ");
  Serial.println(time);
}

void loop() {
}