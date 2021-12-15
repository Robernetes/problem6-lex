%option noyywrap
%option main
%{
#include <stdio.h>
%}

%%
11+ printf("acepted\n"); exit(0);
1 printf("rejected\n"); exit(0);
(^0*) printf("rejected\n"); exit(0);
(1|0*) printf("rejected\n"); exit(0);
(011*) printf("rejected\n"); exit(0);
(11*)0* printf("rejected\n"); exit(0);
11*0*11* printf("acepted\n"); exit(0);
%%
