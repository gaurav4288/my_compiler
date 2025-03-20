yacc -y -d parser.y 2>/dev/null
flex -w lexer.l
gcc -g -w y.tab.c lex.yy.c
./a.out < "$1"
rm a.out lex.yy.c y.tab.c y.tab.h
echo -e "\033[32m output is stored in file name intercode \033[0m"
