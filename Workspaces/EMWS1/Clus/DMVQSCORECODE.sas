*****************************************;
*** Begin Scoring Code from PROC DMVQ ***;
*****************************************;


*** Begin Class Look-up, Standardization, Replacement ;
drop _dm_bad; _dm_bad = 0;

*** Standardize IMP_logsalar ;
drop T_IMP_logsalar ;
if missing( IMP_logsalar ) then T_IMP_logsalar = .;
else T_IMP_logsalar = (IMP_logsalar - 5.95010101337815) * 1.24256737211885;

*** Standardize cr_atbat ;
drop T_cr_atbat ;
if missing( cr_atbat ) then T_cr_atbat = .;
else T_cr_atbat = (cr_atbat - 2763.07763975155) * 0.00042946486883;

*** Standardize cr_bb ;
drop T_cr_bb ;
if missing( cr_bb ) then T_cr_bb = .;
else T_cr_bb = (cr_bb - 273.394409937888) * 0.0036546318579;

*** Standardize cr_hits ;
drop T_cr_hits ;
if missing( cr_hits ) then T_cr_hits = .;
else T_cr_hits = (cr_hits - 747.686335403726) * 0.0015272127486;

*** Standardize cr_home ;
drop T_cr_home ;
if missing( cr_home ) then T_cr_home = .;
else T_cr_home = (cr_home - 74.0900621118012) * 0.01110307657909;

*** Standardize cr_rbi ;
drop T_cr_rbi ;
if missing( cr_rbi ) then T_cr_rbi = .;
else T_cr_rbi = (cr_rbi - 347.614906832298) * 0.00295167797518;

*** Standardize cr_runs ;
drop T_cr_runs ;
if missing( cr_runs ) then T_cr_runs = .;
else T_cr_runs = (cr_runs - 374.285714285714) * 0.00297243037248;

*** Standardize no_assts ;
drop T_no_assts ;
if missing( no_assts ) then T_no_assts = .;
else T_no_assts = (no_assts - 106.916149068323) * 0.00730713969709;

*** Standardize no_atbat ;
drop T_no_atbat ;
if missing( no_atbat ) then T_no_atbat = .;
else T_no_atbat = (no_atbat - 390.07453416149) * 0.00696399027409;

*** Standardize no_bb ;
drop T_no_bb ;
if missing( no_bb ) then T_no_bb = .;
else T_no_bb = (no_bb - 39.8571428571428) * 0.0474024841755;

*** Standardize no_error ;
drop T_no_error ;
if missing( no_error ) then T_no_error = .;
else T_no_error = (no_error - 8.04037267080745) * 0.15702632145567;

*** Standardize no_hits ;
drop T_no_hits ;
if missing( no_hits ) then T_no_hits = .;
else T_no_hits = (no_hits - 103.39751552795) * 0.02263492780722;

*** Standardize no_home ;
drop T_no_home ;
if missing( no_home ) then T_no_home = .;
else T_no_home = (no_home - 11.1024844720496) * 0.11495878728216;

*** Standardize no_outs ;
drop T_no_outs ;
if missing( no_outs ) then T_no_outs = .;
else T_no_outs = (no_outs - 288.993788819875) * 0.00356307223613;

*** Standardize no_rbi ;
drop T_no_rbi ;
if missing( no_rbi ) then T_no_rbi = .;
else T_no_rbi = (no_rbi - 49.3726708074534) * 0.03921389879042;

*** Standardize no_runs ;
drop T_no_runs ;
if missing( no_runs ) then T_no_runs = .;
else T_no_runs = (no_runs - 52.2173913043478) * 0.03990842434033;

*** Standardize yr_major ;
drop T_yr_major ;
if missing( yr_major ) then T_yr_major = .;
else T_yr_major = (yr_major - 7.68012422360248) * 0.20121912188448;

*** End Class Look-up, Standardization, Replacement ;


*** Omitted Cases;
if _dm_bad then do;
   _SEGMENT_ = .; Distance = .;
   goto CLUSvlex ;
end; *** omitted;

*** Compute Distances and Cluster Membership;
label _SEGMENT_ = 'Segment Id' ;
label Distance = 'Distance' ;
array CLUSvads [4] _temporary_;
drop _vqclus _vqmvar _vqnvar;
_vqmvar = 0;
do _vqclus = 1 to 4; CLUSvads [_vqclus] = 0; end;
if not missing( T_IMP_logsalar ) then do;
   CLUSvads [1] + ( T_IMP_logsalar - -0.67104734965582 )**2;
   CLUSvads [2] + ( T_IMP_logsalar - 0.37346262573945 )**2;
   CLUSvads [3] + ( T_IMP_logsalar - 0.26120408217919 )**2;
   CLUSvads [4] + ( T_IMP_logsalar - 1.09950257705468 )**2;
end;
else _vqmvar + 1;
if not missing( T_cr_atbat ) then do;
   CLUSvads [1] + ( T_cr_atbat - -0.72805763426427 )**2;
   CLUSvads [2] + ( T_cr_atbat - -0.17146538021555 )**2;
   CLUSvads [3] + ( T_cr_atbat - 1.2216739581264 )**2;
   CLUSvads [4] + ( T_cr_atbat - 1.67306783999514 )**2;
end;
else _vqmvar + 1;
if not missing( T_cr_bb ) then do;
   CLUSvads [1] + ( T_cr_bb - -0.65780776748292 )**2;
   CLUSvads [2] + ( T_cr_bb - -0.20880794187635 )**2;
   CLUSvads [3] + ( T_cr_bb - 1.12104220571303 )**2;
   CLUSvads [4] + ( T_cr_bb - 1.66655539827313 )**2;
end;
else _vqmvar + 1;
if not missing( T_cr_hits ) then do;
   CLUSvads [1] + ( T_cr_hits - -0.72655522431899 )**2;
   CLUSvads [2] + ( T_cr_hits - -0.15108269186971 )**2;
   CLUSvads [3] + ( T_cr_hits - 1.16476494359412 )**2;
   CLUSvads [4] + ( T_cr_hits - 1.68699916101031 )**2;
end;
else _vqmvar + 1;
if not missing( T_cr_home ) then do;
   CLUSvads [1] + ( T_cr_home - -0.57785526333834 )**2;
   CLUSvads [2] + ( T_cr_home - -0.22079976028453 )**2;
   CLUSvads [3] + ( T_cr_home - 0.73380164148062 )**2;
   CLUSvads [4] + ( T_cr_home - 1.9822870874175 )**2;
end;
else _vqmvar + 1;
if not missing( T_cr_rbi ) then do;
   CLUSvads [1] + ( T_cr_rbi - -0.68608998967109 )**2;
   CLUSvads [2] + ( T_cr_rbi - -0.20799517959082 )**2;
   CLUSvads [3] + ( T_cr_rbi - 1.02832060638657 )**2;
   CLUSvads [4] + ( T_cr_rbi - 1.92535399103325 )**2;
end;
else _vqmvar + 1;
if not missing( T_cr_runs ) then do;
   CLUSvads [1] + ( T_cr_runs - -0.72456850628473 )**2;
   CLUSvads [2] + ( T_cr_runs - -0.15522298766571 )**2;
   CLUSvads [3] + ( T_cr_runs - 1.09145944745957 )**2;
   CLUSvads [4] + ( T_cr_runs - 1.80731728514073 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_assts ) then do;
   CLUSvads [1] + ( T_no_assts - -0.24246039869479 )**2;
   CLUSvads [2] + ( T_no_assts - 0.55568469264722 )**2;
   CLUSvads [3] + ( T_no_assts - -0.40551811389311 )**2;
   CLUSvads [4] + ( T_no_assts - -0.24166464011035 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_atbat ) then do;
   CLUSvads [1] + ( T_no_atbat - -0.74418880444617 )**2;
   CLUSvads [2] + ( T_no_atbat - 0.95167765202449 )**2;
   CLUSvads [3] + ( T_no_atbat - -0.64928438911078 )**2;
   CLUSvads [4] + ( T_no_atbat - 0.8723736007434 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_bb ) then do;
   CLUSvads [1] + ( T_no_bb - -0.63208442372986 )**2;
   CLUSvads [2] + ( T_no_bb - 0.60544760211464 )**2;
   CLUSvads [3] + ( T_no_bb - -0.35159099691317 )**2;
   CLUSvads [4] + ( T_no_bb - 1.11332352342558 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_error ) then do;
   CLUSvads [1] + ( T_no_error - -0.25615417430008 )**2;
   CLUSvads [2] + ( T_no_error - 0.5868709757372 )**2;
   CLUSvads [3] + ( T_no_error - -0.4177485341981 )**2;
   CLUSvads [4] + ( T_no_error - -0.27132148944068 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_hits ) then do;
   CLUSvads [1] + ( T_no_hits - -0.73365837856015 )**2;
   CLUSvads [2] + ( T_no_hits - 0.95508252317837 )**2;
   CLUSvads [3] + ( T_no_hits - -0.63553253698132 )**2;
   CLUSvads [4] + ( T_no_hits - 0.79595688486694 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_home ) then do;
   CLUSvads [1] + ( T_no_home - -0.5256124337772 )**2;
   CLUSvads [2] + ( T_no_home - 0.44486035885983 )**2;
   CLUSvads [3] + ( T_no_home - -0.37045290694243 )**2;
   CLUSvads [4] + ( T_no_home - 1.24558024527656 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_outs ) then do;
   CLUSvads [1] + ( T_no_outs - -0.30148936061393 )**2;
   CLUSvads [2] + ( T_no_outs - 0.38272248217229 )**2;
   CLUSvads [3] + ( T_no_outs - -0.19466413609909 )**2;
   CLUSvads [4] + ( T_no_outs - 0.25611794785583 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_rbi ) then do;
   CLUSvads [1] + ( T_no_rbi - -0.6904594794787 )**2;
   CLUSvads [2] + ( T_no_rbi - 0.69777195270034 )**2;
   CLUSvads [3] + ( T_no_rbi - -0.50478761020587 )**2;
   CLUSvads [4] + ( T_no_rbi - 1.28189565343264 )**2;
end;
else _vqmvar + 1;
if not missing( T_no_runs ) then do;
   CLUSvads [1] + ( T_no_runs - -0.69256101607207 )**2;
   CLUSvads [2] + ( T_no_runs - 0.87633051756985 )**2;
   CLUSvads [3] + ( T_no_runs - -0.63284350110463 )**2;
   CLUSvads [4] + ( T_no_runs - 0.88801666497506 )**2;
end;
else _vqmvar + 1;
if not missing( T_yr_major ) then do;
   CLUSvads [1] + ( T_yr_major - -0.59874334700778 )**2;
   CLUSvads [2] + ( T_yr_major - -0.31198916068586 )**2;
   CLUSvads [3] + ( T_yr_major - 1.38838694483877 )**2;
   CLUSvads [4] + ( T_yr_major - 1.35342512241134 )**2;
end;
else _vqmvar + 1;
_vqnvar = 17 - _vqmvar;
if _vqnvar <= 3.2855496101547E-11 then do;
   _SEGMENT_ = .; Distance = .;
end;
else do;
   _SEGMENT_ = 1; Distance = CLUSvads [1];
   _vqfzdst = Distance * 0.99999999999988; drop _vqfzdst;
   do _vqclus = 2 to 4;
      if CLUSvads [_vqclus] < _vqfzdst then do;
         _SEGMENT_ = _vqclus; Distance = CLUSvads [_vqclus];
         _vqfzdst = Distance * 0.99999999999988;
      end;
   end;
   Distance = sqrt(Distance * (17 / _vqnvar));
end;
CLUSvlex :;

***************************************;
*** End Scoring Code from PROC DMVQ ***;
***************************************;
