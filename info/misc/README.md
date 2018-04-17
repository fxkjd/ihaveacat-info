# Misc

## Commands I Always Forget {#Links}

* Create a 20 characters long random password using /dev/urandom:

>$ cat /dev/urandom | tr -dc 'a-zA-Z0-9-_!@#$%^&*()_+{}|:<>?=' | fold -w 20 | grep -i '[!@#$%^&*()_+{}|:<>?=]' | head -n 1

* Make 'cut' command treat several sequential delimiters as one (whitespace):

>$ cat text.txt | tr -s ' ' | cut -d ' ' -f2

* Use 'dd' to remove the first X bits from a file

>$ dd if=YOUR_FILE bs=1 skip=X of=output

* Add line numbers

>$ cat foobar.txt | nl

* (Win) Deny execution in a directory:

> \> icacls DIR /deny everyone:(IO)(OI)(X)

## Feng shui and Other Cool Tricks {#tricks}

### Test the shellcode like this (credit to [@chaign_c](https://twitter.com/chaign_c)):

```
$ cat main.c
char main[] = "\x31\xc0\x48\xbb\xd1\x9d\x96\x91\xd0\x8c\x97\xff\x48\xf7\xdb\x53\x54\x5f\x99\x52\x57\x54\x5e\xb0\x3b\x0f\x05";
$ gcc main.c -z exestack
$ ./a.out
sh-4.4$ id
uid=0(root) gid=0(root) groups=0(root)
sh-4.4$ exit
$
```

### Python Bytecode Assembler/Disassembler:

Assemble .py files:

>$ python -m compileall .

Disassemble .pyc files:

```
import dis, marshal, sys

# Header size changed in 3.3. It might change again, but as of this writing, it hasn't.
header_size = 12 if sys.version_info >= (3, 3) else 8

with open(PYC_FILE, "rb") as f:
    magic_and_timestamp = f.read(header_size)  # first 8 or 12 bytes are metadata
    code = marshal.load(f)                     # rest is a marshalled code object

dis.dis(code)
```

