grammar MM ;

db : (axiom
   | theorem
   | comment
   | constStat
   | varStat
   | disjointStat
   | varTypeHyp
   | logicalHyp
   | scopeStat
   | includeStat)+ EOF ;

scopeStat :
   '${'
     (axiom
   | theorem
   | comment
   | varStat
   | disjointStat
   | varTypeHyp
   | logicalHyp
   | scopeStat
   | includeStat)*
   '$}' ;

includeStat : '$[' comment* includeFile comment* '$]' ;
includeFile : LABEL | MATHWORD ;

axiom : axiomLabel '$a' axiomConst axiomStat '$.' ;
axiomLabel : LABEL ;
axiomConst : LABEL | MATHWORD ;
axiomStat : (LABEL | MATHWORD)* ;

theorem : theoremLabel '$p' theoremConst theoremStat '$=' proof '$.' ;
theoremLabel : LABEL ;
theoremConst : LABEL | MATHWORD ;
theoremStat : (LABEL | MATHWORD)* ;
proof : (LABEL | MATHWORD)+ ;

comment : '$(' (LABEL | MATHWORD)* '$)' ;

constStat : '$c' constants '$.' ;
constants : (LABEL | MATHWORD)+ ;

varStat : '$v' vars '$.' ;
vars : (LABEL | MATHWORD)+ ;

disjointStat : '$d' disjointVars '$.' ;
disjointVars : (LABEL | MATHWORD) (LABEL | MATHWORD)+ ;

varTypeHyp : varTypeHypLabel '$f' varTypeHypConst varTypeHypVar '$.' ;
varTypeHypLabel : LABEL ;
varTypeHypConst : LABEL | MATHWORD ;
varTypeHypVar : LABEL | MATHWORD ;

logicalHyp : logicalHypLabel '$e' logicalHypConst logicalHypStat '$.' ;
logicalHypLabel : LABEL ;
logicalHypConst : LABEL | MATHWORD ;
logicalHypStat : (LABEL | MATHWORD)* ;

LABEL : [A-Za-z0-9._-]+ ;
MATHWORD : ~[ \t\r\n$]+ ;
COMMENT : '$(' .*? '$)' -> channel(HIDDEN) ;
WS : [ \t\r\n]+ -> skip ;
