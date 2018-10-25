# Coding

## C {#C}

* [C-Based Toolchain Hardening](https://www.owasp.org/index.php/C-Based_Toolchain_Hardening)

## Git {#Git}

* [Flight Rules for Git](https://github.com/k88hudson/git-flight-rules#i-want-to-start-a-local-repository)

## Go {#Go}

* [Go Internals](https://github.com/teh-cmc/go-internals)

## Java {#Java}

* [JVM Internals](http://blog.jamesdbloom.com/JVMInternals.html)

## JavaScript {#Javascript}

* [You Don't Know JS](https://github.com/getify/You-Dont-Know-JS)
* [How to deal with dirty side effects in your pure functional JavaScript](https://jrsinclair.com/articles/2018/how-to-deal-with-dirty-side-effects-in-your-pure-functional-javascript/)
* [Concepts to help developers master JavaScript](https://github.com/leonardomso/33-js-concepts)

## Python {#Python}

* [Intermediate Python](http://book.pythontips.com/en/latest/index.html)
* [Python 3 vs JavaScript](https://sayazamurai.github.io/python-vs-javascript/)

## Rust {#Rust}

* [Writing an OS in Rust](https://os.phil-opp.com/first-edition/)
* [Error Handling in Rust](https://blog.burntsushi.net/rust-error-handling/#standard-library-traits-used-for-error-handling)
* [#[test] in 2018](https://blog.jrenner.net/rust/testing/2018/07/19/test-in-2018.html)
* [Why is a Rust executable large?](https://lifthrasiir.github.io/rustlog/why-is-a-rust-executable-large.html) - [more info](https://users.rust-lang.org/t/why-do-rust-programs-use-more-memory-than-the-c-haskell-and-ocaml-versions/3224)

### Notes {#Rust_Notes}

* These two statements are equivalent:

```
let x = &y;
let ref x = y;
```

## Vim {#Vim}

* [Vim Registers](https://www.brianstorti.com/vim-registers/)
* [All the Right Moves](http://vim.wikia.com/wiki/All_the_right_moves)
* [Using command-line history](http://vim.wikia.com/wiki/Using_command-line_history)
* [Vim macros](http://vim.wikia.com/wiki/Macros)

### Notes {#Vim_Notes}

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
