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
