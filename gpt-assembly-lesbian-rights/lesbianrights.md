Sure, here's an example x64 Assembly program using NASM syntax that prints "lesbian rights" to the console:

```assembly
perl

section .data
    msg db 'lesbian rights', 0

section .text
    global _start

_start:
    ; write the message to stdout
    mov eax, 4          ; write syscall number
    mov ebx, 1          ; file descriptor for stdout
    mov ecx, msg        ; pointer to message string
    mov edx, 13         ; length of message
    int 0x80            ; invoke syscall

    ; exit the program
    mov eax, 1          ; exit syscall number
    xor ebx, ebx        ; exit status code
    int 0x80            ; invoke syscall
```

This program uses the write system call to print the message "lesbian rights" to the console. The message is stored as a null-terminated string in the .data section of the program, and the write system call is invoked with the appropriate parameters to print the message to stdout. Finally, the program uses the exit system call to terminate the program.