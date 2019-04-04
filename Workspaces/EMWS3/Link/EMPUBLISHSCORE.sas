*------------------------------------------------------------*;
* LA: Score Code for Transactional Data, Rec=Y;
* To run this score code as stand alone uncomment the code below and set the LADATA and EM_SCORE_OUTPUT macro variables;
* %let EM_SCORE_OUTPUT=;
* %let LADATA =;
* data &EM_SCORE_OUTPUT;
*   set &LADATA;
* run;
*------------------------------------------------------------*;
data ruledata;
  length   NITEMS                               8
           count                                8
           SUPPORT                              8
           confidence                           8
           PSEUDOLIFT                           8
           RULE                             $ 200
           item1                            $ 200
           item2                            $ 200
           RuleID                               8
           ;
 
  label    NITEMS="Chain Length"
           count="Transaction Count"
           SUPPORT="Support(%)"
           confidence="Confidence(%)"
           PSEUDOLIFT="PseudoLift"
           RULE="Rule"
           item1="Chain Item 1"
           item2="Recommended Items"
           ;
  format   NITEMS 8.
           count 8.
           SUPPORT 6.2
           confidence 6.2
           PSEUDOLIFT 6.2
           ;
NITEMS=2; count=117; SUPPORT=40.3448275862069; confidence=84.7826086956521; PSEUDOLIFT=1.82125603864734; RULE="/Department.jsp ==> /Subcategory.jsp"; item1="/Department.jsp"; item2="/Subcategory.jsp"; RuleID=1;
output;
NITEMS=2; count=110; SUPPORT=37.9310344827586; confidence=55.8375634517766; PSEUDOLIFT=1.17339807253733; RULE="/Home.jsp ==> /Department.jsp"; item1="/Home.jsp"; item2="/Department.jsp"; RuleID=2;
output;
NITEMS=2; count=109; SUPPORT=37.5862068965517; confidence=72.1854304635761; PSEUDOLIFT=1.06262816418462; RULE="/Cookie_Check.jsp ==> /Home.jsp"; item1="/Cookie_Check.jsp"; item2="/Home.jsp"; RuleID=3;
output;
NITEMS=2; count=106; SUPPORT=36.551724137931; confidence=53.8071065989847; PSEUDOLIFT=1.03338151746394; RULE="/Home.jsp ==> /Product.jsp"; item1="/Home.jsp"; item2="/Product.jsp"; RuleID=4;
output;
NITEMS=2; count=103; SUPPORT=35.5172413793103; confidence=52.2842639593908; PSEUDOLIFT=1.00413487074326; RULE="/Home.jsp ==> /Cookie_Check.jsp"; item1="/Home.jsp"; item2="/Cookie_Check.jsp"; RuleID=5;
output;
NITEMS=2; count=99; SUPPORT=34.1379310344827; confidence=50.2538071065989; PSEUDOLIFT=1.07952622673434; RULE="/Home.jsp ==> /Subcategory.jsp"; item1="/Home.jsp"; item2="/Subcategory.jsp"; RuleID=6;
output;
NITEMS=2; count=94; SUPPORT=32.4137931034482; confidence=69.6296296296296; PSEUDOLIFT=1.33725778758891; RULE="/Subcategory.jsp ==> /Product.jsp"; item1="/Subcategory.jsp"; item2="/Product.jsp"; RuleID=7;
output;
NITEMS=2; count=88; SUPPORT=30.3448275862069; confidence=63.7681159420289; PSEUDOLIFT=1.22468567040982; RULE="/Department.jsp ==> /Product.jsp"; item1="/Department.jsp"; item2="/Product.jsp"; RuleID=8;
output;
NITEMS=2; count=86; SUPPORT=29.6551724137931; confidence=56.9536423841059; PSEUDOLIFT=1.09381167492653; RULE="/Cookie_Check.jsp ==> /Product.jsp"; item1="/Cookie_Check.jsp"; item2="/Product.jsp"; RuleID=9;
output;
NITEMS=2; count=82; SUPPORT=28.2758620689655; confidence=54.3046357615894; PSEUDOLIFT=1.16654402747118; RULE="/Cookie_Check.jsp ==> /Subcategory.jsp"; item1="/Cookie_Check.jsp"; item2="/Subcategory.jsp"; RuleID=10;
output;
NITEMS=2; count=80; SUPPORT=27.5862068965517; confidence=52.9801324503311; PSEUDOLIFT=1.11335060946348; RULE="/Cookie_Check.jsp ==> /Department.jsp"; item1="/Cookie_Check.jsp"; item2="/Department.jsp"; RuleID=11;
output;
NITEMS=2; count=77; SUPPORT=26.551724137931; confidence=50.9933774834437; PSEUDOLIFT=1.09541329408879; RULE="/Product.jsp ==> /Subcategory.jsp"; item1="/Product.jsp"; item2="/Subcategory.jsp"; RuleID=12;
output;
NITEMS=2; count=76; SUPPORT=26.2068965517241; confidence=50.3311258278145; PSEUDOLIFT=1.0576830789903; RULE="/Product.jsp ==> /Department.jsp"; item1="/Product.jsp"; item2="/Department.jsp"; RuleID=13;
output;
NITEMS=2; count=73; SUPPORT=25.1724137931034; confidence=54.074074074074; PSEUDOLIFT=1.13633923778851; RULE="/Subcategory.jsp ==> /Department.jsp"; item1="/Subcategory.jsp"; item2="/Department.jsp"; RuleID=14;
output;
NITEMS=2; count=49; SUPPORT=16.8965517241379; confidence=83.0508474576271; PSEUDOLIFT=4.91525423728813; RULE="/Cart.jsp ==> /Shipping.jsp"; item1="/Cart.jsp"; item2="/Shipping.jsp"; RuleID=15;
output;
NITEMS=2; count=49; SUPPORT=16.8965517241379; confidence=84.4827586206896; PSEUDOLIFT=5; RULE="/Search.jsp ==> /Site_Search.jsp"; item1="/Search.jsp"; item2="/Site_Search.jsp"; RuleID=16;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=100; PSEUDOLIFT=6.04166666666666; RULE="/Billing.jsp ==> /Summary.jsp"; item1="/Billing.jsp"; item2="/Summary.jsp"; RuleID=17;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=100; PSEUDOLIFT=5.8; RULE="/Summary.jsp ==> /Confirm.jsp"; item1="/Summary.jsp"; item2="/Confirm.jsp"; RuleID=18;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=81.3559322033898; PSEUDOLIFT=4.91525423728813; RULE="/Cart.jsp ==> /Billing.jsp"; item1="/Cart.jsp"; item2="/Billing.jsp"; RuleID=19;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=81.3559322033898; PSEUDOLIFT=4.91525423728813; RULE="/Cart.jsp ==> /Summary.jsp"; item1="/Cart.jsp"; item2="/Summary.jsp"; RuleID=20;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=97.9591836734694; PSEUDOLIFT=5.68163265306122; RULE="/Shipping.jsp ==> /Confirm.jsp"; item1="/Shipping.jsp"; item2="/Confirm.jsp"; RuleID=21;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=81.3559322033898; PSEUDOLIFT=4.71864406779661; RULE="/Cart.jsp ==> /Confirm.jsp"; item1="/Cart.jsp"; item2="/Confirm.jsp"; RuleID=22;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=100; PSEUDOLIFT=5.8; RULE="/Billing.jsp ==> /Confirm.jsp"; item1="/Billing.jsp"; item2="/Confirm.jsp"; RuleID=23;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=97.9591836734694; PSEUDOLIFT=5.91836734693877; RULE="/Shipping.jsp ==> /Summary.jsp"; item1="/Shipping.jsp"; item2="/Summary.jsp"; RuleID=24;
output;
NITEMS=2; count=48; SUPPORT=16.551724137931; confidence=97.9591836734694; PSEUDOLIFT=5.91836734693877; RULE="/Shipping.jsp ==> /Billing.jsp"; item1="/Shipping.jsp"; item2="/Billing.jsp"; RuleID=25;
output;
NITEMS=2; count=39; SUPPORT=13.4482758620689; confidence=67.2413793103448; PSEUDOLIFT=1.29139072847682; RULE="/Search.jsp ==> /Product.jsp"; item1="/Search.jsp"; item2="/Product.jsp"; RuleID=26;
output;
NITEMS=2; count=30; SUPPORT=10.3448275862068; confidence=61.2244897959183; PSEUDOLIFT=1.17583457223949; RULE="/Site_Search.jsp ==> /Product.jsp"; item1="/Site_Search.jsp"; item2="/Product.jsp"; RuleID=27;
output;
NITEMS=2; count=28; SUPPORT=9.6551724137931; confidence=100; PSEUDOLIFT=5.8; RULE="/Registration.jsp ==> /Confirm.jsp"; item1="/Registration.jsp"; item2="/Confirm.jsp"; RuleID=28;
output;
NITEMS=2; count=28; SUPPORT=9.6551724137931; confidence=58.3333333333333; PSEUDOLIFT=6.04166666666666; RULE="/Summary.jsp ==> /Registration.jsp"; item1="/Summary.jsp"; item2="/Registration.jsp"; RuleID=29;
output;
NITEMS=2; count=28; SUPPORT=9.6551724137931; confidence=58.3333333333333; PSEUDOLIFT=6.04166666666666; RULE="/Billing.jsp ==> /Registration.jsp"; item1="/Billing.jsp"; item2="/Registration.jsp"; RuleID=30;
output;
NITEMS=2; count=28; SUPPORT=9.6551724137931; confidence=57.1428571428571; PSEUDOLIFT=5.91836734693877; RULE="/Shipping.jsp ==> /Registration.jsp"; item1="/Shipping.jsp"; item2="/Registration.jsp"; RuleID=31;
output;
NITEMS=2; count=21; SUPPORT=7.24137931034483; confidence=77.7777777777777; PSEUDOLIFT=1.49374540103016; RULE="/Product_Info.jsp ==> /Product.jsp"; item1="/Product_Info.jsp"; item2="/Product.jsp"; RuleID=32;
output;
NITEMS=2; count=18; SUPPORT=6.20689655172413; confidence=90; PSEUDOLIFT=1.72847682119205; RULE="/Quick_Checkout.jsp ==> /Product.jsp"; item1="/Quick_Checkout.jsp"; item2="/Product.jsp"; RuleID=33;
output;
NITEMS=2; count=17; SUPPORT=5.86206896551724; confidence=85; PSEUDOLIFT=4.17796610169491; RULE="/Quick_Checkout.jsp ==> /Cart.jsp"; item1="/Quick_Checkout.jsp"; item2="/Cart.jsp"; RuleID=34;
output;
NITEMS=2; count=15; SUPPORT=5.17241379310344; confidence=75; PSEUDOLIFT=4.53125; RULE="/Quick_Checkout.jsp ==> /Billing.jsp"; item1="/Quick_Checkout.jsp"; item2="/Billing.jsp"; RuleID=35;
output;
NITEMS=2; count=15; SUPPORT=5.17241379310344; confidence=75; PSEUDOLIFT=4.35; RULE="/Quick_Checkout.jsp ==> /Confirm.jsp"; item1="/Quick_Checkout.jsp"; item2="/Confirm.jsp"; RuleID=36;
output;
NITEMS=2; count=15; SUPPORT=5.17241379310344; confidence=55.5555555555555; PSEUDOLIFT=1.19341563786008; RULE="/Product_Info.jsp ==> /Subcategory.jsp"; item1="/Product_Info.jsp"; item2="/Subcategory.jsp"; RuleID=37;
output;
NITEMS=2; count=15; SUPPORT=5.17241379310344; confidence=55.5555555555555; PSEUDOLIFT=1.16747181964573; RULE="/Product_Info.jsp ==> /Department.jsp"; item1="/Product_Info.jsp"; item2="/Department.jsp"; RuleID=38;
output;
NITEMS=2; count=15; SUPPORT=5.17241379310344; confidence=75; PSEUDOLIFT=4.53125; RULE="/Quick_Checkout.jsp ==> /Summary.jsp"; item1="/Quick_Checkout.jsp"; item2="/Summary.jsp"; RuleID=39;
output;
NITEMS=2; count=15; SUPPORT=5.17241379310344; confidence=75; PSEUDOLIFT=4.43877551020408; RULE="/Quick_Checkout.jsp ==> /Shipping.jsp"; item1="/Quick_Checkout.jsp"; item2="/Shipping.jsp"; RuleID=40;
output;
NITEMS=2; count=14; SUPPORT=4.82758620689655; confidence=87.5; PSEUDOLIFT=18.125; RULE="/Member_Home.jsp ==> /Member_Register.jsp"; item1="/Member_Home.jsp"; item2="/Member_Register.jsp"; RuleID=41;
output;
NITEMS=2; count=14; SUPPORT=4.82758620689655; confidence=63.6363636363636; PSEUDOLIFT=12.3030303030303; RULE="/Catalog_Request.jsp ==> /Catalog_Order.jsp"; item1="/Catalog_Request.jsp"; item2="/Catalog_Order.jsp"; RuleID=42;
output;
NITEMS=2; count=13; SUPPORT=4.48275862068965; confidence=59.0909090909091; PSEUDOLIFT=1.24176548089591; RULE="/Retail_Store.jsp ==> /Department.jsp"; item1="/Retail_Store.jsp"; item2="/Department.jsp"; RuleID=43;
output;
NITEMS=2; count=12; SUPPORT=4.13793103448275; confidence=75; PSEUDOLIFT=3.6864406779661; RULE="/Member_Home.jsp ==> /Cart.jsp"; item1="/Member_Home.jsp"; item2="/Cart.jsp"; RuleID=44;
output;
NITEMS=2; count=12; SUPPORT=4.13793103448275; confidence=75; PSEUDOLIFT=1.61111111111111; RULE="/Images.jsp ==> /Subcategory.jsp"; item1="/Images.jsp"; item2="/Subcategory.jsp"; RuleID=45;
output;
NITEMS=2; count=11; SUPPORT=3.79310344827586; confidence=50; PSEUDOLIFT=1.07407407407407; RULE="/Retail_Store.jsp ==> /Subcategory.jsp"; item1="/Retail_Store.jsp"; item2="/Subcategory.jsp"; RuleID=46;
output;
NITEMS=2; count=11; SUPPORT=3.79310344827586; confidence=78.5714285714285; PSEUDOLIFT=3.86198547215496; RULE="/Member_Register.jsp ==> /Cart.jsp"; item1="/Member_Register.jsp"; item2="/Cart.jsp"; RuleID=47;
output;
NITEMS=2; count=11; SUPPORT=3.79310344827586; confidence=68.75; PSEUDOLIFT=1.32036423841059; RULE="/Images.jsp ==> /Product.jsp"; item1="/Images.jsp"; item2="/Product.jsp"; RuleID=48;
output;
NITEMS=2; count=10; SUPPORT=3.44827586206896; confidence=62.5; PSEUDOLIFT=1.20033112582781; RULE="/Member_Home.jsp ==> /Product.jsp"; item1="/Member_Home.jsp"; item2="/Product.jsp"; RuleID=49;
output;
NITEMS=2; count=10; SUPPORT=3.44827586206896; confidence=62.5; PSEUDOLIFT=1.31340579710144; RULE="/Images.jsp ==> /Department.jsp"; item1="/Images.jsp"; item2="/Department.jsp"; RuleID=50;
output;
NITEMS=2; count=10; SUPPORT=3.44827586206896; confidence=62.5; PSEUDOLIFT=18.125; RULE="/Member_Home.jsp ==> /Member_Information.jsp"; item1="/Member_Home.jsp"; item2="/Member_Information.jsp"; RuleID=51;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=64.2857142857143; PSEUDOLIFT=1.23462630085146; RULE="/Member_Register.jsp ==> /Product.jsp"; item1="/Member_Register.jsp"; item2="/Product.jsp"; RuleID=52;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=56.25; PSEUDOLIFT=3.32908163265306; RULE="/Member_Home.jsp ==> /Shipping.jsp"; item1="/Member_Home.jsp"; item2="/Shipping.jsp"; RuleID=53;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=56.25; PSEUDOLIFT=3.3984375; RULE="/Member_Home.jsp ==> /Billing.jsp"; item1="/Member_Home.jsp"; item2="/Billing.jsp"; RuleID=54;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=64.2857142857143; PSEUDOLIFT=3.88392857142857; RULE="/Member_Register.jsp ==> /Billing.jsp"; item1="/Member_Register.jsp"; item2="/Billing.jsp"; RuleID=55;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=64.2857142857143; PSEUDOLIFT=3.88392857142857; RULE="/Member_Register.jsp ==> /Summary.jsp"; item1="/Member_Register.jsp"; item2="/Summary.jsp"; RuleID=56;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=90; PSEUDOLIFT=18.6428571428571; RULE="/Member_Information.jsp ==> /Member_Register.jsp"; item1="/Member_Information.jsp"; item2="/Member_Register.jsp"; RuleID=57;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=56.25; PSEUDOLIFT=3.3984375; RULE="/Member_Home.jsp ==> /Summary.jsp"; item1="/Member_Home.jsp"; item2="/Summary.jsp"; RuleID=58;
output;
NITEMS=2; count=9; SUPPORT=3.10344827586206; confidence=64.2857142857143; PSEUDOLIFT=3.80466472303207; RULE="/Member_Register.jsp ==> /Shipping.jsp"; item1="/Member_Register.jsp"; item2="/Shipping.jsp"; RuleID=59;
output;
NITEMS=2; count=8; SUPPORT=2.75862068965517; confidence=50; PSEUDOLIFT=0.73604060913705; RULE="/Member_Home.jsp ==> /Home.jsp"; item1="/Member_Home.jsp"; item2="/Home.jsp"; RuleID=60;
output;
NITEMS=2; count=8; SUPPORT=2.75862068965517; confidence=57.1428571428571; PSEUDOLIFT=0.8411892675852; RULE="/Member_Register.jsp ==> /Home.jsp"; item1="/Member_Register.jsp"; item2="/Home.jsp"; RuleID=61;
output;
NITEMS=2; count=8; SUPPORT=2.75862068965517; confidence=50; PSEUDOLIFT=2.9; RULE="/Member_Home.jsp ==> /Confirm.jsp"; item1="/Member_Home.jsp"; item2="/Confirm.jsp"; RuleID=62;
output;
NITEMS=2; count=8; SUPPORT=2.75862068965517; confidence=50; PSEUDOLIFT=5.37037037037037; RULE="/Images.jsp ==> /Product_Info.jsp"; item1="/Images.jsp"; item2="/Product_Info.jsp"; RuleID=63;
output;
NITEMS=2; count=8; SUPPORT=2.75862068965517; confidence=57.1428571428571; PSEUDOLIFT=3.31428571428571; RULE="/Member_Register.jsp ==> /Confirm.jsp"; item1="/Member_Register.jsp"; item2="/Confirm.jsp"; RuleID=64;
output;
NITEMS=2; count=7; SUPPORT=2.41379310344827; confidence=50; PSEUDOLIFT=1.05072463768115; RULE="/Member_Register.jsp ==> /Department.jsp"; item1="/Member_Register.jsp"; item2="/Department.jsp"; RuleID=65;
output;
NITEMS=2; count=7; SUPPORT=2.41379310344827; confidence=70; PSEUDOLIFT=3.44067796610169; RULE="/Member_Information.jsp ==> /Cart.jsp"; item1="/Member_Information.jsp"; item2="/Cart.jsp"; RuleID=66;
output;
NITEMS=2; count=7; SUPPORT=2.41379310344827; confidence=70; PSEUDOLIFT=1.03045685279187; RULE="/Member_Information.jsp ==> /Home.jsp"; item1="/Member_Information.jsp"; item2="/Home.jsp"; RuleID=67;
output;
NITEMS=2; count=7; SUPPORT=2.41379310344827; confidence=100; PSEUDOLIFT=1.9205298013245; RULE="/Product_Detail.jsp ==> /Product.jsp"; item1="/Product_Detail.jsp"; item2="/Product.jsp"; RuleID=68;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=100; PSEUDOLIFT=5.8; RULE="/Gift/GiftMain.jsp ==> /Confirm.jsp"; item1="/Gift/GiftMain.jsp"; item2="/Confirm.jsp"; RuleID=69;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=100; PSEUDOLIFT=6.04166666666666; RULE="/Gift/GiftMain.jsp ==> /Billing.jsp"; item1="/Gift/GiftMain.jsp"; item2="/Billing.jsp"; RuleID=70;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=100; PSEUDOLIFT=6.04166666666666; RULE="/Gift/GiftMain.jsp ==> /Summary.jsp"; item1="/Gift/GiftMain.jsp"; item2="/Summary.jsp"; RuleID=71;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=100; PSEUDOLIFT=48.3333333333333; RULE="/Order_Status.jsp ==> /Order_Detail.jsp"; item1="/Order_Status.jsp"; item2="/Order_Detail.jsp"; RuleID=72;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=60; PSEUDOLIFT=1.1523178807947; RULE="/Member_Information.jsp ==> /Product.jsp"; item1="/Member_Information.jsp"; item2="/Product.jsp"; RuleID=73;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=100; PSEUDOLIFT=5.91836734693877; RULE="/Gift/GiftMain.jsp ==> /Shipping.jsp"; item1="/Gift/GiftMain.jsp"; item2="/Shipping.jsp"; RuleID=74;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=100; PSEUDOLIFT=4.91525423728813; RULE="/Gift/GiftMain.jsp ==> /Cart.jsp"; item1="/Gift/GiftMain.jsp"; item2="/Cart.jsp"; RuleID=75;
output;
NITEMS=2; count=6; SUPPORT=2.06896551724137; confidence=100; PSEUDOLIFT=1.9205298013245; RULE="/Gift/GiftMain.jsp ==> /Product.jsp"; item1="/Gift/GiftMain.jsp"; item2="/Product.jsp"; RuleID=76;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=50; PSEUDOLIFT=3.02083333333333; RULE="/Member_Information.jsp ==> /Billing.jsp"; item1="/Member_Information.jsp"; item2="/Billing.jsp"; RuleID=77;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=50; PSEUDOLIFT=3.02083333333333; RULE="/Member_Information.jsp ==> /Summary.jsp"; item1="/Member_Information.jsp"; item2="/Summary.jsp"; RuleID=78;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=100; PSEUDOLIFT=6.04166666666666; RULE="/Shipping_Charges.jsp ==> /Billing.jsp"; item1="/Shipping_Charges.jsp"; item2="/Billing.jsp"; RuleID=79;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=50; PSEUDOLIFT=2.95918367346938; RULE="/Member_Information.jsp ==> /Shipping.jsp"; item1="/Member_Information.jsp"; item2="/Shipping.jsp"; RuleID=80;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=100; PSEUDOLIFT=6.04166666666666; RULE="/Shipping_Charges.jsp ==> /Summary.jsp"; item1="/Shipping_Charges.jsp"; item2="/Summary.jsp"; RuleID=81;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=100; PSEUDOLIFT=5.8; RULE="/Shipping_Charges.jsp ==> /Confirm.jsp"; item1="/Shipping_Charges.jsp"; item2="/Confirm.jsp"; RuleID=82;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=50; PSEUDOLIFT=2.9; RULE="/Member_Information.jsp ==> /Confirm.jsp"; item1="/Member_Information.jsp"; item2="/Confirm.jsp"; RuleID=83;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=100; PSEUDOLIFT=5.91836734693877; RULE="/Shipping_Charges.jsp ==> /Shipping.jsp"; item1="/Shipping_Charges.jsp"; item2="/Shipping.jsp"; RuleID=84;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=50; PSEUDOLIFT=1.07407407407407; RULE="/Member_Information.jsp ==> /Subcategory.jsp"; item1="/Member_Information.jsp"; item2="/Subcategory.jsp"; RuleID=85;
output;
NITEMS=2; count=5; SUPPORT=1.72413793103448; confidence=50; PSEUDOLIFT=1.05072463768115; RULE="/Member_Information.jsp ==> /Department.jsp"; item1="/Member_Information.jsp"; item2="/Department.jsp"; RuleID=86;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=80; PSEUDOLIFT=8.28571428571428; RULE="/Shipping_Charges.jsp ==> /Registration.jsp"; item1="/Shipping_Charges.jsp"; item2="/Registration.jsp"; RuleID=87;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=100; PSEUDOLIFT=1.9205298013245; RULE="/images/ ==> /Product.jsp"; item1="/images/"; item2="/Product.jsp"; RuleID=88;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=57.1428571428571; PSEUDOLIFT=1.20082815734989; RULE="/Product_Detail.jsp ==> /Department.jsp"; item1="/Product_Detail.jsp"; item2="/Department.jsp"; RuleID=89;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=100; PSEUDOLIFT=2.10144927536231; RULE="/images/ ==> /Department.jsp"; item1="/images/"; item2="/Department.jsp"; RuleID=90;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=100; PSEUDOLIFT=6.04166666666666; RULE="/Gift.jsp ==> /Summary.jsp"; item1="/Gift.jsp"; item2="/Summary.jsp"; RuleID=91;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=100; PSEUDOLIFT=5.8; RULE="/Gift.jsp ==> /Confirm.jsp"; item1="/Gift.jsp"; item2="/Confirm.jsp"; RuleID=92;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=100; PSEUDOLIFT=2.14814814814814; RULE="/images/ ==> /Subcategory.jsp"; item1="/images/"; item2="/Subcategory.jsp"; RuleID=93;
output;
NITEMS=2; count=4; SUPPORT=1.37931034482758; confidence=100; PSEUDOLIFT=6.04166666666666; RULE="/Gift.jsp ==> /Billing.jsp"; item1="/Gift.jsp"; item2="/Billing.jsp"; RuleID=94;
output;
NITEMS=2; count=3; SUPPORT=1.03448275862068; confidence=50; PSEUDOLIFT=1.05072463768115; RULE="/Email.jsp ==> /Department.jsp"; item1="/Email.jsp"; item2="/Department.jsp"; RuleID=95;
output;
NITEMS=2; count=3; SUPPORT=1.03448275862068; confidence=50; PSEUDOLIFT=5.17857142857142; RULE="/Gift/GiftMain.jsp ==> /Registration.jsp"; item1="/Gift/GiftMain.jsp"; item2="/Registration.jsp"; RuleID=96;
output;
NITEMS=2; count=3; SUPPORT=1.03448275862068; confidence=75; PSEUDOLIFT=1.10406091370558; RULE="/Site_Map.htm ==> /Home.jsp"; item1="/Site_Map.htm"; item2="/Home.jsp"; RuleID=97;
output;
NITEMS=2; count=3; SUPPORT=1.03448275862068; confidence=100; PSEUDOLIFT=96.6666666666666; RULE="/Specials/Subscription.jsp ==> /Specials/Confirmation.jsp"; item1="/Specials/Subscription.jsp"; item2="/Specials/Confirmation.jsp"; RuleID=98;
output;
NITEMS=2; count=3; SUPPORT=1.03448275862068; confidence=100; PSEUDOLIFT=1.9205298013245; RULE="/MiniDisc/Error.htm ==> /Product.jsp"; item1="/MiniDisc/Error.htm"; item2="/Product.jsp"; RuleID=99;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=50; PSEUDOLIFT=0.96026490066225; RULE="/Site_Map.htm ==> /Product.jsp"; item1="/Site_Map.htm"; item2="/Product.jsp"; RuleID=100;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=50; PSEUDOLIFT=1.05072463768115; RULE="/Site_Map.htm ==> /Department.jsp"; item1="/Site_Map.htm"; item2="/Department.jsp"; RuleID=101;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=50; PSEUDOLIFT=1.07407407407407; RULE="/Site_Map.htm ==> /Subcategory.jsp"; item1="/Site_Map.htm"; item2="/Subcategory.jsp"; RuleID=102;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=50; PSEUDOLIFT=5.37037037037037; RULE="/Site_Map.htm ==> /Product_Info.jsp"; item1="/Site_Map.htm"; item2="/Product_Info.jsp"; RuleID=103;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=50; PSEUDOLIFT=5.17857142857142; RULE="/Gift.jsp ==> /Registration.jsp"; item1="/Gift.jsp"; item2="/Registration.jsp"; RuleID=104;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=66.6666666666666; PSEUDOLIFT=0.9813874788494; RULE="/Specials/Subscription.jsp ==> /Home.jsp"; item1="/Specials/Subscription.jsp"; item2="/Home.jsp"; RuleID=105;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=66.6666666666666; PSEUDOLIFT=12.0833333333333; RULE="/Specials/Subscription.jsp ==> /Member_Home.jsp"; item1="/Specials/Subscription.jsp"; item2="/Member_Home.jsp"; RuleID=106;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=66.6666666666666; PSEUDOLIFT=13.8095238095238; RULE="/Specials/Subscription.jsp ==> /Member_Register.jsp"; item1="/Specials/Subscription.jsp"; item2="/Member_Register.jsp"; RuleID=107;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=66.6666666666666; PSEUDOLIFT=0.9813874788494; RULE="/Specials/Confirmation.jsp ==> /Home.jsp"; item1="/Specials/Confirmation.jsp"; item2="/Home.jsp"; RuleID=108;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=66.6666666666666; PSEUDOLIFT=12.0833333333333; RULE="/Specials/Confirmation.jsp ==> /Member_Home.jsp"; item1="/Specials/Confirmation.jsp"; item2="/Member_Home.jsp"; RuleID=109;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=66.6666666666666; PSEUDOLIFT=13.8095238095238; RULE="/Specials/Confirmation.jsp ==> /Member_Register.jsp"; item1="/Specials/Confirmation.jsp"; item2="/Member_Register.jsp"; RuleID=110;
output;
NITEMS=2; count=2; SUPPORT=0.68965517241379; confidence=100; PSEUDOLIFT=13.1818181818181; RULE="/Corporate_Relations.jsp ==> /Retail_Store.jsp"; item1="/Corporate_Relations.jsp"; item2="/Retail_Store.jsp"; RuleID=111;
output;
;
run;
Proc sql noprint;
create table tmp1 as 
select a.session_id , b.item2 as requested_file, sum(b.count*b.confidence)/sum(b.count) as confidence 
from &EM_SCORE_OUTPUT a, ruledata b 
where cats(a.requested_file) = b.item1 
group by a.session_id, b.item2 
order by a.session_id, confidence desc; 
create table tmp2 as select session_id, requested_file 
from tmp1 
except 
      select session_id, cats(requested_file) as requested_file
      from &EM_SCORE_OUTPUT 
 ; 
create table _tmpout as   
      select b.session_id,b.requested_file,b.confidence  
      from tmp2 a, tmp1 b    
      where a.session_id=b.session_id and a.requested_file=b.requested_file  
 ;  
quit; 
 data _tmpout;
     set _tmpout;
     by session_id; retain rank 0;
     if first.session_id then rank=1;
     else rank+1;
 run;
 data &EM_SCORE_OUTPUT;
     set _tmpout;
run;
proc datasets lib=work nolist;
   delete tmp1 tmp2 _tmpout ruledata;
run;
