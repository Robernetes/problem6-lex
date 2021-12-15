# Autoversion makefile Version 171129.082609
# (C) 2011-2017 by Ruben Carlo Benante
# GPL v2
#
# lexical analysis and syntactic analysis
# of a very small program for a 
# hellow world example

CC = gcc
# LIB = -lfl -L/usr/local/opt/flex/lib
o ?= problem6

all: $(o).x

lex: lex.yy.c

flex: lex

lex.yy.c: $(o).l
	flex $(o).l 
	
y.tab.h: $(o).y

$(o).x: lex.yy.c 
	$(CC) lex.yy.c -o $(o) $(LIB)

clean:
	del lex.yy.c
	del $(o).exe
	del *.output