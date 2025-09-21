SECTION .data ; Section containing uninitialized data
  EatMsg: db "Eat at Joe's!123456789",10
  EatLen: equ $-EatMsg
SECTION .bss ; Section containing uninitialized data
SECTION .text ; Section containing code
global .start ; Linker needs this to find the entry point!
start:
  mov rbp, rsp ; for correct debugging
  nop  ; This no-op keeps gdb happy...
  mov ax,1 ; 1 = sys_write for syscall
  mov rdi,1 ; 1 = fd for stdout; i.e. write to the terminal window
  mov rsi,EatMsg ; Put address of the message in rdx
  mov rdx,EatLen ; 
  syscall ; Make the system call -- this prints out the message
  mov rax,60 ; 60 = exit the program
  mov rdi,0 ; Return value in rdi 0 = nothing to return
  syscall ; Call syscall to exit
