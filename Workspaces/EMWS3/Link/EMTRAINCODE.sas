%MACRO EM_LINKANALYSIS_MAIN;
  filename temp catalog 'sashelp.emexpl.link_macros.source';
      %include temp;
  filename temp;

   %if %upcase(&EM_ACTION) = CREATE %then %do;
    filename temp catalog 'sashelp.emexpl.link_create.source';
      %include temp;
    filename temp;
    %EM_LINKANALYSIS_CREATE;
   %end;

   %if %upcase(&EM_ACTION) = TRAIN %then %do;
    filename temp catalog 'sashelp.emexpl.link_train.source';
       %include temp;
      filename temp;
    %EM_LINKANALYSIS_TRAIN;
  %end;

   %if %upcase(&EM_ACTION) = SCORE %then %do;
    filename temp catalog 'sashelp.emexpl.link_score.source';
    %include temp;
    filename temp;
    %EM_LINKANALYSIS_SCORE;
  %end;

   %if %upcase(&EM_ACTION) = REPORT %then %do;
    filename temp catalog 'sashelp.emexpl.link_report.source';
    %include temp;
    filename temp;
    %EM_LINKANALYSIS_REPORT;
  %end ;
%MEND EM_LINKANALYSIS_MAIN;

%EM_LINKANALYSIS_MAIN;
