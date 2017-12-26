Garder un shell open :
<<<<<<< HEAD
(cat /tmp/payload ; cat) | ./Binary (Attention au shell fish...)
 
=======
(cat /tmp/payload ; cat) | ./Binary

>>>>>>> f2076ece72e7ed93f40402f2061025646940eea4
Creation de shellcode from nasm + Dump :
$ nasm -o hello.o write.asm
$ hexdump -v -e '"\\""x" 1/1 "%02x" ""' (Attention à fish ou autre terminal..)


Faire un shellcode from C (Sans libC): 
<<<<<<< HEAD
ragg2-cc -a x86 -b 64 -x -o output  write.c --> (Macro Notepad++).
=======
ragg2-cc -a x86 -b 64 -x -o output  write.c
>>>>>>> f2076ece72e7ed93f40402f2061025646940eea4


