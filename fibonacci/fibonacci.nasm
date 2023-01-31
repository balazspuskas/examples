section .data
section .text
    global _start

_start:
    ; fibonacci function
    ; input: eax = n
    ; output: eax = fib(n)
fibonacci:
    push ebp
    mov ebp, esp
    cmp dword [ebp + 8], 0
    jle return_0
    cmp dword [ebp + 8], 1
    jle return_1
    push eax
    dec dword [ebp + 8]
    call fibonacci
    mov ebx, eax
    pop eax
    dec dword [ebp + 8]
    call fibonacci
    add eax, ebx
    jmp end_fibonacci
return_0:
    mov eax, 0
    jmp end_fibonacci
return_1:
    mov eax, 1
end_fibonacci:
    mov esp, ebp
    pop ebp
    ret
