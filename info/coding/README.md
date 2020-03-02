# Coding

## ASM {#ASM}

* [NASM Tutorial](http://cs.lmu.edu/~ray/notes/nasmtutorial/)

## Awk {#AWK}

* [Awk by Example](https://developer.ibm.com/tutorials/l-awk1/)

## C {#C}

* [C-Based Toolchain Hardening](https://www.owasp.org/index.php/C-Based_Toolchain_Hardening)
* [Write your Own Virtual Machine](https://justinmeiners.github.io/lc3-vm/)

## Compilers {#Compilers}

* [C Compiler from Scratch](https://github.com/DoctorWkt/acwj)

## Git {#Git}

* [Flight Rules for Git](https://github.com/k88hudson/git-flight-rules)
* [A Git Horror Story: Repository Integrity With Signed Commits](https://mikegerwitz.com/papers/git-horror-story)
* [Oh Shit, Git!](https://ohshitgit.com/)
* [Learn Git Branching](https://learngitbranching.js.org/)
* [How to Undo Almost Anything with Git](https://github.blog/2015-06-08-how-to-undo-almost-anything-with-git/)

## Go {#Go}

* [Go Internals](https://github.com/teh-cmc/go-internals)
* [A visual guide to Go Memory Allocator](https://blog.learngoprogramming.com/a-visual-guide-to-golang-memory-allocator-from-ground-up-e132258453ed)
* [Practical Go: Real world advice for writing maintainable Go programs](https://dave.cheney.net/practical-go/presentations/qcon-china.html)
* [Building a BitTorrent client in Go](https://blog.jse.li/posts/torrent/)

## Java {#Java}

* [JVM Internals](http://blog.jamesdbloom.com/JVMInternals.html)

## JavaScript {#Javascript}

* [You Don't Know JS](https://github.com/getify/You-Dont-Know-JS)
* [How to deal with dirty side effects in your pure functional JavaScript](https://jrsinclair.com/articles/2018/how-to-deal-with-dirty-side-effects-in-your-pure-functional-javascript/)
* [Concepts to help developers master JavaScript](https://github.com/leonardomso/33-js-concepts)

### Node.js {#Nodejs}

* [A complete guide to threads in Node.js](https://blog.logrocket.com/a-complete-guide-to-threads-in-node-js-4fa3898fe74f)

## Python {#Python}

* [Intermediate Python](http://book.pythontips.com/en/latest/index.html)
* [Python 3 vs JavaScript](https://sayazamurai.github.io/python-vs-javascript/)
* [Problem Solving with Algorithms and Data Structures using Python](https://runestone.academy/runestone/books/published/pythonds/index.html)

## Rust {#Rust}

* [Writing an OS in Rust](https://os.phil-opp.com/first-edition/)
* [Error Handling in Rust](https://blog.burntsushi.net/rust-error-handling/#standard-library-traits-used-for-error-handling)
* [#[test] in 2018](https://blog.jrenner.net/rust/testing/2018/07/19/test-in-2018.html)
* [Why is a Rust executable large?](https://lifthrasiir.github.io/rustlog/why-is-a-rust-executable-large.html) - [more info](https://users.rust-lang.org/t/why-do-rust-programs-use-more-memory-than-the-c-haskell-and-ocaml-versions/3224)
* [The Rust borrow checker from a different perspective](https://blog.systems.ethz.ch/blog/2018/a-hammer-you-can-only-hold-by-the-handle.html)
* [Should small Rust structs be passed by-copy or by-borrow?](https://www.forrestthewoods.com/blog/should-small-rust-structs-be-passed-by-copy-or-by-borrow/)
* [Rust Lang in a Nutshell](https://www.softax.pl/blog/rust-lang-in-a-nutshell-1-introduction/)

### Notes {#Rust_Notes}

* These two statements are equivalent:

```
let x = &y;
let ref x = y;
```

* Ownership rules:

```
- with cloning:
    No special rules to guide against memory bugs
    Generally expensive for non trivial data structures
- with moving:
    Once ownership is moved from a variable, that variable no longer has access to the value it originally holds.
- with immutable borrow: 
    you can create unlimited immutable borrows
    all immutable borrows can only read
    The original owning variable is now restricted regarding how it mutates the value it owned. It can only mutate as long as no immutable borrow is in scope. This ensures that Rust promise to immutable borrow that the variable they borrow won't change is kept.
    basically: Many readers, no writers (as long as there are readers around. If not, then writing becomes possible) 
- with mutable borrow:
    you can only have one mutable borrow.
    all reading and writing can be done only via the active mutable borrow.
    The original owning variable also can no longer read nor write as long as there is an active mutable borrow.
    basically: One write and reader: the mutable borrow 
``` 
