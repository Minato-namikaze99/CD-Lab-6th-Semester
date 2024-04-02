We will begin the Parser section of Compiler Design from now on (I think).

YACC 
    - YACC stands for "Yet Another Compiler Compiler". It's a software tool used in compiler construction.  YACC takes a formal description of a language's grammar (the rules for how valid code is structured) as input, and generates a parser program as output. This parser program can then be used to check if a piece of code follows the grammar of the language.

    - Here's a breakdown of what YACC does:
        > Input: A description of a grammar, typically written in a format similar to Backus–Naur Form (BNF). This describes the valid structures of the language being parsed.
        > Output: A C program that acts as a parser. This program can check if a given code snippet follows the grammar rules provided as input.
        > YACC is often used alongside another tool called LEX. LEX helps with the first stage of processing, which is breaking the code down into individual tokens (keywords, identifiers, operators, etc.).  YACC then takes these tokens and uses the grammar rules to determine if the code is syntactically valid.

    - While YACC itself is not as common these days, there are several widely used derivatives that share the same basic functionality. An example is Bison, which is the GNU Project's alternative to YACC.

Bison
    - It is essentially a derivative of YACC. It stands for "Berkeley YACC" and is the GNU Project's version of the YACC compiler compiler. It functions very similarly to YACC, taking a grammar specification as input and generating a parser program as output.

    - Here's a quick comparison of YACC and Bison:
        > Similarities: Both use BNF-like notation for grammar specification, both generate parsers in C code, and both serve the same purpose in compiler construction.
        > Differences: Bison is generally considered more user-friendly and offers some additional features over YACC, such as better error handling and support for more complex grammar constructs. Bison is also open-source software, freely available with the GNU Compiler Collection (GCC).
        > In many cases, Bison code written for one can be easily ported to the other with minimal changes. Today, Bison is the more widely used tool, though some legacy systems might still use YACC.


IMPORTANT INSTRUCTIONS REGARDING YACC IN CD LAB FROM NOW ON
    - Compile the YACC file (the one with the '.y' extension) using the command "yacc -d < filename >" [The '-d' overrides to always produce the header as well as the c files]

    - This will produce 2 files, namely, "y.tab.h" and "y.tab.c".

    - The "y.tab.h" is the header file which will be hardcoded into the Lex file.

    - After that, compile the Lex file with the command "lex  < filename >".

    - As we know, this will create a "lex.yy.c" file. 

    - Then, compile the "lex.yy.c" and the "y.tab.c" file using the GCC compiler, using the command "gcc lex.yy.c y.tab.c".