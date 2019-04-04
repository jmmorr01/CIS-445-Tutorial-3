*------------------------------------------------------------*;
* Assoc: Sorting Training Data;
*------------------------------------------------------------*;
proc sort data=EMWS2.Ids_DATA(keep= PRODUCT CUSTOMER) out=WORK.SORTEDTRAIN;
by CUSTOMER;
run;
*------------------------------------------------------------* ;
* EM: DMDBClass Macro ;
*------------------------------------------------------------* ;
%macro DMDBClass;
    PRODUCT(DESC)
%mend DMDBClass;
*------------------------------------------------------------* ;
* EM: DMDBVar Macro ;
*------------------------------------------------------------* ;
%macro DMDBVar;

%mend DMDBVar;
*------------------------------------------------------------*;
* EM: Create DMDB;
*------------------------------------------------------------*;
proc dmdb batch data=WORK.SORTEDTRAIN
dmdbcat=WORK.EM_DMDB
maxlevel = 100001
normlen= 256
out=WORK.EM_DMDB
;
id
CUSTOMER
;
class %DMDBClass;
target
PRODUCT
;
run;
quit;
options nocleanup;
proc assoc dmdb dmdbcat=WORK.EM_DMDB out=EMWS2.Assoc_ASSOC data=WORK.EM_DMDB
pctsup = 5
items=4
;
customer
CUSTOMER
;
target
PRODUCT
;
run;
quit;
proc rulegen in = EMWS2.Assoc_ASSOC out=EMWS2.Assoc_RULE minconf = 10
;
run;
quit;
*------------------------------------------------------------*;
* Assoc: Selecting rules;
*------------------------------------------------------------*;
proc sort data=EMWS2.Assoc_RULE;
by descending LIFT;
where SET_SIZE>1;
run;
data WORK.ASSOCSUBSET;
set EMWS2.Assoc_RULE(obs=200);
index=_N_;
label index = "%sysfunc(sasmsg(sashelp.dmine, rpt_ruleIndex_vlabel,  NOQUOTE))";
label _LHAND = "%sysfunc(sasmsg(sashelp.dmine, rpt_leftHandSide_vlabel,  NOQUOTE))";
label _RHAND = "%sysfunc(sasmsg(sashelp.dmine, rpt_rightHandSide_vlabel,  NOQUOTE))";
run;
