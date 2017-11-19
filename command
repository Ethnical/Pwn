Garder un shell open :
(cat /tmp/payload ; cat) | ./Binary (Attention au shell fish...)
 
Creation de shellcode from nasm + Dump :
$ nasm -o hello.o write.asm
$ hexdump -v -e '"\\""x" 1/1 "%02x" ""' (Attention à fish ou autre terminal..)


Faire un shellcode from C (Sans libC): 
ragg2-cc -a x86 -b 64 -x -o output  write.c --> (Macro Notepad++).


