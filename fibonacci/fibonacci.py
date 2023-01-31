from qiskit import QuantumCircuit, QuantumRegister, ClassicalRegister, execute
import time

# Define the quantum and classical registers
q = QuantumRegister(1)
c = ClassicalRegister(1)

# Build the quantum circuit
circuit = QuantumCircuit(q, c)

# Apply a mathematical operation
circuit.x(q[0])

# Measure the result
circuit.measure(q, c)

# Execute the circuit on a quantum backend
start_time = time.time()
job = execute(circuit, backend, shots=1024)
result = job.result()
counts = result.get_counts(circuit)
end_time = time.time()

# Print the result
print("Result: ",counts)
print("Elapsed time: ", end_time - start_time, "seconds")