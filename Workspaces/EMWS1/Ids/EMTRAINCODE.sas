*------------------------------------------------------------*;
* Data Source Setup;
*------------------------------------------------------------*;
libname EMWS1 "J:\JMMORR01\CIS 445\CIS 445 Tutorial 3\Workspaces\EMWS1";
*------------------------------------------------------------*;
* Ids: Creating DATA data;
*------------------------------------------------------------*;
data EMWS1.Ids_DATA (label="All: Baseball Data")
/ view=EMWS1.Ids_DATA
;
set SAMPSIO.DMABASE;
run;
