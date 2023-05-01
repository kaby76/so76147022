grammar test;
fragment HASH : '#' ;
COMMENT : HASH ~[\r\n]* -> channel(HIDDEN);
start : body EOF? ;
w : (NL | s)+ ;
s : S+ ;
body : (w? expression w? NL+)* w? (varl=WORD | expression) w? ;
expression : WORD ;
WORD: [a-zA-Z];
NL: [\n\r];
S: ' ';

