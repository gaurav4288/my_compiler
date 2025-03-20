# SIL Compiler

SIL Compiler is a simple compiler developed using **YACC**, **Lex**, and **GCC**. It translates source code written in a custom language into an intermediate representation. The language supports variable declarations, nested blocks, conditional statements, and basic I/O operations. The project includes a complete build process automated by a shell script.



## Features

- **Lexical Analysis:**  
  Uses a Flex-based lexer (`lexer.l`) to tokenize the source code, detecting tokens and reporting errors (e.g., invalid characters).

- **Syntax Parsing:**  
  Utilizes a YACC-based parser (`parser.y`) to ensure the source code conforms to the custom language's grammar.

- **Error Handling:**  
  Provides feedback for syntax and lexical errors, stopping the compilation process if an error is encountered.

- **Automated Build Process:**  
  A shell script (`commands.sh`) automates the following:
  - Running YACC and Flex.
  - Compiling the generated C source code with GCC.
  - Executing the compiler with a given input file.
  - Cleaning up intermediate files (with file existence checks).

## Prerequisites

Make sure you have the following installed on your system:

- **Flex** (for lexical analysis)
- **YACC/Bison** (for syntax parsing)
- **GCC** (for compiling the generated C code)
- **Bash** (to run the build script)

On Ubuntu or Debian-based systems, you can install these prerequisites using:

```bash
sudo apt-get update
sudo apt-get install flex bison gcc
chmod +x commands.sh
./commands.sh input_file
```
## Sample Program
Below is an example of source code written in the custom language supported by this compiler:
```
decl
    integer ad, a, b, c;
enddecl
integer main()
{   
    decl
        integer a, b, c;
    enddecl
    begin
        ad = 10;
        read(a);
        read(b);
        read(c);
        if(a >= b) then
            if(b >= c) then
                write(c);
                write(b);
                write(a);
            else
                if(c >= a) then
                    write(b);
                    write(a);
                    write(c);
                else
                    write(b);
                    write(c);
                    write(a);
                endif;
            endif;
        else
            if(a >= c) then
                write(c);
                write(a);
                write(b);
            else
                if(c >= b) then
                    write(a);
                    write(b);
                    write(c);
                else
                    write(a);
                    write(c);
                    write(b);
                endif;
            endif;
        endif;
        write(ad);
        return 1;
    end
}
```
This sample illustrates the basic constructs of the custom language, including declarations, control structures, and I/O operations.
## for .cpp files it will give error as it is not made for that language

