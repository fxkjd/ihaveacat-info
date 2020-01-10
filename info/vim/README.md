

# Vim {#Vim}

## Links {#Vim_Links} 

* [Vim Registers](https://www.brianstorti.com/vim-registers/)
* [All the Right Moves](http://vim.wikia.com/wiki/All_the_right_moves)
* [Using command-line history](http://vim.wikia.com/wiki/Using_command-line_history)
* [Vim macros](http://vim.wikia.com/wiki/Macros)
* [Vim Anti-Patterns](https://sanctum.geek.nz/arabesque/vim-anti-patterns/)
* [Interactive Vim Tutorial](https://www.openvim.com/)
 
## Notes {#Vim_Notes}

* Switching case of characters:

```
Toggle case "HellO" to "hELLo" with g~ then a movement.
Alternatively, you can visually select text then press ~ to toggle case, or U to convert to uppercase, or u to convert to lowercase. 
```

* Increasing or decreasing numbers:

```
Ctrl-A to increment the next number. Ctrl-X to decrement the next number.
```

* Macros 101:

```
qd 	start recording to register d
... 	your complex series of commands
q 	stop recording
@d 	execute your macro
@@ 	execute your macro again 
```

* External commands 101:

```
:! By itself, runs the last external command (from your shell history)
:!! Repeats the last command
:silent !{cmd} Eliminates the need to hit enter after the command is done
:r !{cmd} Puts the output of $cmd into the current buffer.
```

* Open the history window:

```
Type q: for commands, or q/ for searches; or
Type : or / to start entering a command or search, then press the 'cedit' key (default is Ctrl-f :help 'cedit'). 
```

* Magic regex:

```
Preceding your pattern with \v will make the pattern “magic”, symbols like { and [ have an interpreted meaning.
```
