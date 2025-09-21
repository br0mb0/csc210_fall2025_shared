nasm -f elf64 -g -F dwarf eatsyscall.asm -o eatsyscall.o
ld -o eatsyscall eatsyscall.o
./eatsyscall
