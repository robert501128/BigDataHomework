id2008 = LOAD 'airflight/2008.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:int,
 ArrTime:chararray,
 CRSArrTime:int,
 UniqueCarrier:chararray,
 FlightNum:chararray,
 TailNum:chararray,
 ActualElapsedTime:int,
 CRSElapsedTime:int,
 AirTime:int,
 ArrDelay:int,
 DepDelay:int,
 Origin:chararray,
 Dest:chararray,
 Distance:int,
 TaxiIn:int,
 TaxiOut:int,
 Cancelled:chararray,
 CancellationCode:chararray,
 Diverted:int,
 CarrierDelay:int,
 WeatherDelay:int,
 NASDelay:int,
 SecurityDelay:int,
 LateAircraftDelay:int);
id2008_arr_0 = filter id2008 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2008_arr_1 = filter id2008 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2008_arr_2 = filter id2008 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2008_arr_3 = filter id2008 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2008_arr_4 = filter id2008 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2008_arr_5 = filter id2008 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2008_arr_6 = filter id2008 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2008_arr_7 = filter id2008 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2008_arr_8 = filter id2008 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2008_arr_9 = filter id2008 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2008_arr_10 = filter id2008 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2008_arr_11 = filter id2008 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2008_arr_12 = filter id2008 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2008_arr_13 = filter id2008 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2008_arr_14 = filter id2008 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2008_arr_15 = filter id2008 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2008_arr_16 = filter id2008 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2008_arr_17 = filter id2008 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2008_arr_18 = filter id2008 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2008_arr_19 = filter id2008 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2008_arr_20 = filter id2008 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2008_arr_21 = filter id2008 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2008_arr_22 = filter id2008 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2008_arr_23 = filter id2008 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2008_0 = group id2008_arr_0 all;
group_arr_2008_1 = group id2008_arr_1 all;
group_arr_2008_2 = group id2008_arr_2 all;
group_arr_2008_3 = group id2008_arr_3 all;
group_arr_2008_4 = group id2008_arr_4 all;
group_arr_2008_5 = group id2008_arr_5 all;
group_arr_2008_6 = group id2008_arr_6 all;
group_arr_2008_7 = group id2008_arr_7 all;
group_arr_2008_8 = group id2008_arr_8 all;
group_arr_2008_9 = group id2008_arr_9 all;
group_arr_2008_10 = group id2008_arr_10 all;
group_arr_2008_11 = group id2008_arr_11 all;
group_arr_2008_12 = group id2008_arr_12 all;
group_arr_2008_13 = group id2008_arr_13 all;
group_arr_2008_14 = group id2008_arr_14 all;
group_arr_2008_15 = group id2008_arr_15 all;
group_arr_2008_16 = group id2008_arr_16 all;
group_arr_2008_17 = group id2008_arr_17 all;
group_arr_2008_18 = group id2008_arr_18 all;
group_arr_2008_19 = group id2008_arr_19 all;
group_arr_2008_20 = group id2008_arr_20 all;
group_arr_2008_21 = group id2008_arr_21 all;
group_arr_2008_22 = group id2008_arr_22 all;
group_arr_2008_23 = group id2008_arr_23 all;
Delay_arr_2008_0 = foreach group_arr_2008_0 generate (AVG(id2008_arr_0.ArrDelay));
Delay_arr_2008_1 = foreach group_arr_2008_1 generate (AVG(id2008_arr_1.ArrDelay));
Delay_arr_2008_2 = foreach group_arr_2008_2 generate (AVG(id2008_arr_2.ArrDelay));
Delay_arr_2008_3 = foreach group_arr_2008_3 generate (AVG(id2008_arr_3.ArrDelay));
Delay_arr_2008_4 = foreach group_arr_2008_4 generate (AVG(id2008_arr_4.ArrDelay));
Delay_arr_2008_5 = foreach group_arr_2008_5 generate (AVG(id2008_arr_5.ArrDelay));
Delay_arr_2008_6 = foreach group_arr_2008_6 generate (AVG(id2008_arr_6.ArrDelay));
Delay_arr_2008_7 = foreach group_arr_2008_7 generate (AVG(id2008_arr_7.ArrDelay));
Delay_arr_2008_8 = foreach group_arr_2008_8 generate (AVG(id2008_arr_8.ArrDelay));
Delay_arr_2008_9 = foreach group_arr_2008_9 generate (AVG(id2008_arr_9.ArrDelay));
Delay_arr_2008_10 = foreach group_arr_2008_10 generate (AVG(id2008_arr_10.ArrDelay));
Delay_arr_2008_11 = foreach group_arr_2008_11 generate (AVG(id2008_arr_11.ArrDelay));
Delay_arr_2008_12 = foreach group_arr_2008_12 generate (AVG(id2008_arr_12.ArrDelay));
Delay_arr_2008_13 = foreach group_arr_2008_13 generate (AVG(id2008_arr_13.ArrDelay));
Delay_arr_2008_14 = foreach group_arr_2008_14 generate (AVG(id2008_arr_14.ArrDelay));
Delay_arr_2008_15 = foreach group_arr_2008_15 generate (AVG(id2008_arr_15.ArrDelay));
Delay_arr_2008_16 = foreach group_arr_2008_16 generate (AVG(id2008_arr_16.ArrDelay));
Delay_arr_2008_17 = foreach group_arr_2008_17 generate (AVG(id2008_arr_17.ArrDelay));
Delay_arr_2008_18 = foreach group_arr_2008_18 generate (AVG(id2008_arr_18.ArrDelay));
Delay_arr_2008_19 = foreach group_arr_2008_19 generate (AVG(id2008_arr_19.ArrDelay));
Delay_arr_2008_20 = foreach group_arr_2008_20 generate (AVG(id2008_arr_20.ArrDelay));
Delay_arr_2008_21 = foreach group_arr_2008_21 generate (AVG(id2008_arr_21.ArrDelay));
Delay_arr_2008_22 = foreach group_arr_2008_22 generate (AVG(id2008_arr_22.ArrDelay));
Delay_arr_2008_23 = foreach group_arr_2008_23 generate (AVG(id2008_arr_23.ArrDelay));
Union2008 = UNION Delay_arr_2008_0,Delay_arr_2008_1,Delay_arr_2008_2,Delay_arr_2008_3,Delay_arr_2008_4,Delay_arr_2008_5,Delay_arr_2008_6,Delay_arr_2008_7,Delay_arr_2008_8,Delay_arr_2008_9,Delay_arr_2008_10,Delay_arr_2008_11,Delay_arr_2008_12,Delay_arr_2008_13,Delay_arr_2008_14,Delay_arr_2008_15,Delay_arr_2008_16,Delay_arr_2008_17,Delay_arr_2008_18,Delay_arr_2008_19,Delay_arr_2008_20,Delay_arr_2008_21,Delay_arr_2008_22,Delay_arr_2008_23;
STORE Union2008 INTO '/user/s31wcp55/q3/2008/arr' USING PigStorage (',');
id2008_dep_0 = filter id2008 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2008_dep_1 = filter id2008 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2008_dep_2 = filter id2008 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2008_dep_3 = filter id2008 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2008_dep_4 = filter id2008 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2008_dep_5 = filter id2008 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2008_dep_6 = filter id2008 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2008_dep_7 = filter id2008 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2008_dep_8 = filter id2008 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2008_dep_9 = filter id2008 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2008_dep_10 = filter id2008 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2008_dep_11 = filter id2008 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2008_dep_12 = filter id2008 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2008_dep_13 = filter id2008 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2008_dep_14 = filter id2008 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2008_dep_15 = filter id2008 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2008_dep_16 = filter id2008 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2008_dep_17 = filter id2008 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2008_dep_18 = filter id2008 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2008_dep_19 = filter id2008 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2008_dep_20 = filter id2008 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2008_dep_21 = filter id2008 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2008_dep_22 = filter id2008 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2008_dep_23 = filter id2008 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2008_0 = group id2008_dep_0 all;
group_dep_2008_1 = group id2008_dep_1 all;
group_dep_2008_2 = group id2008_dep_2 all;
group_dep_2008_3 = group id2008_dep_3 all;
group_dep_2008_4 = group id2008_dep_4 all;
group_dep_2008_5 = group id2008_dep_5 all;
group_dep_2008_6 = group id2008_dep_6 all;
group_dep_2008_7 = group id2008_dep_7 all;
group_dep_2008_8 = group id2008_dep_8 all;
group_dep_2008_9 = group id2008_dep_9 all;
group_dep_2008_10 = group id2008_dep_10 all;
group_dep_2008_11 = group id2008_dep_11 all;
group_dep_2008_12 = group id2008_dep_12 all;
group_dep_2008_13 = group id2008_dep_13 all;
group_dep_2008_14 = group id2008_dep_14 all;
group_dep_2008_15 = group id2008_dep_15 all;
group_dep_2008_16 = group id2008_dep_16 all;
group_dep_2008_17 = group id2008_dep_17 all;
group_dep_2008_18 = group id2008_dep_18 all;
group_dep_2008_19 = group id2008_dep_19 all;
group_dep_2008_20 = group id2008_dep_20 all;
group_dep_2008_21 = group id2008_dep_21 all;
group_dep_2008_22 = group id2008_dep_22 all;
group_dep_2008_23 = group id2008_dep_23 all;
Delay_dep_2008_0 = foreach group_dep_2008_0 generate (AVG(id2008_dep_0.DepDelay));
Delay_dep_2008_1 = foreach group_dep_2008_1 generate (AVG(id2008_dep_1.DepDelay));
Delay_dep_2008_2 = foreach group_dep_2008_2 generate (AVG(id2008_dep_2.DepDelay));
Delay_dep_2008_3 = foreach group_dep_2008_3 generate (AVG(id2008_dep_3.DepDelay));
Delay_dep_2008_4 = foreach group_dep_2008_4 generate (AVG(id2008_dep_4.DepDelay));
Delay_dep_2008_5 = foreach group_dep_2008_5 generate (AVG(id2008_dep_5.DepDelay));
Delay_dep_2008_6 = foreach group_dep_2008_6 generate (AVG(id2008_dep_6.DepDelay));
Delay_dep_2008_7 = foreach group_dep_2008_7 generate (AVG(id2008_dep_7.DepDelay));
Delay_dep_2008_8 = foreach group_dep_2008_8 generate (AVG(id2008_dep_8.DepDelay));
Delay_dep_2008_9 = foreach group_dep_2008_9 generate (AVG(id2008_dep_9.DepDelay));
Delay_dep_2008_10 = foreach group_dep_2008_10 generate (AVG(id2008_dep_10.DepDelay));
Delay_dep_2008_11 = foreach group_dep_2008_11 generate (AVG(id2008_dep_11.DepDelay));
Delay_dep_2008_12 = foreach group_dep_2008_12 generate (AVG(id2008_dep_12.DepDelay));
Delay_dep_2008_13 = foreach group_dep_2008_13 generate (AVG(id2008_dep_13.DepDelay));
Delay_dep_2008_14 = foreach group_dep_2008_14 generate (AVG(id2008_dep_14.DepDelay));
Delay_dep_2008_15 = foreach group_dep_2008_15 generate (AVG(id2008_dep_15.DepDelay));
Delay_dep_2008_16 = foreach group_dep_2008_16 generate (AVG(id2008_dep_16.DepDelay));
Delay_dep_2008_17 = foreach group_dep_2008_17 generate (AVG(id2008_dep_17.DepDelay));
Delay_dep_2008_18 = foreach group_dep_2008_18 generate (AVG(id2008_dep_18.DepDelay));
Delay_dep_2008_19 = foreach group_dep_2008_19 generate (AVG(id2008_dep_19.DepDelay));
Delay_dep_2008_20 = foreach group_dep_2008_20 generate (AVG(id2008_dep_20.DepDelay));
Delay_dep_2008_21 = foreach group_dep_2008_21 generate (AVG(id2008_dep_21.DepDelay));
Delay_dep_2008_22 = foreach group_dep_2008_22 generate (AVG(id2008_dep_22.DepDelay));
Delay_dep_2008_23 = foreach group_dep_2008_23 generate (AVG(id2008_dep_23.DepDelay));
Union2008 = UNION Delay_dep_2008_0,Delay_dep_2008_1,Delay_dep_2008_2,Delay_dep_2008_3,Delay_dep_2008_4,Delay_dep_2008_5,Delay_dep_2008_6,Delay_dep_2008_7,Delay_dep_2008_8,Delay_dep_2008_9,Delay_dep_2008_10,Delay_dep_2008_11,Delay_dep_2008_12,Delay_dep_2008_13,Delay_dep_2008_14,Delay_dep_2008_15,Delay_dep_2008_16,Delay_dep_2008_17,Delay_dep_2008_18,Delay_dep_2008_19,Delay_dep_2008_20,Delay_dep_2008_21,Delay_dep_2008_22,Delay_dep_2008_23;
STORE Union2008 INTO '/user/s31wcp55/q3/2008/dep' USING PigStorage (',');


