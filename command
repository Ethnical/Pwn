Garder un shell open :
(cat /tmp/payload ; cat) | ./Binary (Attention au shell fish...)
 
(cat /tmp/payload ; cat) | ./Binary

Creation de shellcode from nasm + Dump :
$ nasm -o hello.o write.asm
$ hexdump -v -e '"\\""x" 1/1 "%02x" ""' (Attention à fish ou autre terminal..)


Faire un shellcode from C (Sans libC): 
ragg2-cc -a x86 -b 64 -x -o output  write.c --> (Macro Notepad++).

Format string dectection : 
for ((i=0; i<800; i++)); do echo "Index $i" && ./formatstring "AAAA%$i\$x"; done | grep -B1 4141=======
ragg2-cc -a x86 -b 64 -x -o output  write.c

Code en C: 

#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int main(int argc, char *argv[]) 
{
printf("0x%x\n",getenv(argv[1]));
}
