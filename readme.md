# SIL Compiler

SIL Compiler is a simple compiler developed using **YACC**, **Lex**, and **GCC**. It translates source code written in a custom language into an intermediate representation. The language supports variable declarations, nested blocks, conditional statements, and basic I/O operations. The project includes a complete build process automated by a shell script.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Sample Program](#sample-program)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Lexical Analysis:**  
  Uses a Flex-based lexer (`stage9.l`) to tokenize the source code, detecting tokens and reporting errors (e.g., invalid characters).

- **Syntax Parsing:**  
  Utilizes a YACC-based parser (`stage9.y`) to ensure the source code conforms to the custom language's grammar.

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
