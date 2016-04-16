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


id1987 = LOAD 'airflight/1987.csv' USING PigStorage(',') AS (
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
id1987_arr_0 = filter id1987 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1987_arr_1 = filter id1987 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1987_arr_2 = filter id1987 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1987_arr_3 = filter id1987 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1987_arr_4 = filter id1987 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1987_arr_5 = filter id1987 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1987_arr_6 = filter id1987 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1987_arr_7 = filter id1987 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1987_arr_8 = filter id1987 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1987_arr_9 = filter id1987 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1987_arr_10 = filter id1987 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1987_arr_11 = filter id1987 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1987_arr_12 = filter id1987 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1987_arr_13 = filter id1987 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1987_arr_14 = filter id1987 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1987_arr_15 = filter id1987 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1987_arr_16 = filter id1987 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1987_arr_17 = filter id1987 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1987_arr_18 = filter id1987 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1987_arr_19 = filter id1987 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1987_arr_20 = filter id1987 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1987_arr_21 = filter id1987 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1987_arr_22 = filter id1987 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1987_arr_23 = filter id1987 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1987_0 = group id1987_arr_0 all;
group_arr_1987_1 = group id1987_arr_1 all;
group_arr_1987_2 = group id1987_arr_2 all;
group_arr_1987_3 = group id1987_arr_3 all;
group_arr_1987_4 = group id1987_arr_4 all;
group_arr_1987_5 = group id1987_arr_5 all;
group_arr_1987_6 = group id1987_arr_6 all;
group_arr_1987_7 = group id1987_arr_7 all;
group_arr_1987_8 = group id1987_arr_8 all;
group_arr_1987_9 = group id1987_arr_9 all;
group_arr_1987_10 = group id1987_arr_10 all;
group_arr_1987_11 = group id1987_arr_11 all;
group_arr_1987_12 = group id1987_arr_12 all;
group_arr_1987_13 = group id1987_arr_13 all;
group_arr_1987_14 = group id1987_arr_14 all;
group_arr_1987_15 = group id1987_arr_15 all;
group_arr_1987_16 = group id1987_arr_16 all;
group_arr_1987_17 = group id1987_arr_17 all;
group_arr_1987_18 = group id1987_arr_18 all;
group_arr_1987_19 = group id1987_arr_19 all;
group_arr_1987_20 = group id1987_arr_20 all;
group_arr_1987_21 = group id1987_arr_21 all;
group_arr_1987_22 = group id1987_arr_22 all;
group_arr_1987_23 = group id1987_arr_23 all;
Delay_arr_1987_0 = foreach group_arr_1987_0 generate (AVG(id1987_arr_0.ArrDelay));
Delay_arr_1987_1 = foreach group_arr_1987_1 generate (AVG(id1987_arr_1.ArrDelay));
Delay_arr_1987_2 = foreach group_arr_1987_2 generate (AVG(id1987_arr_2.ArrDelay));
Delay_arr_1987_3 = foreach group_arr_1987_3 generate (AVG(id1987_arr_3.ArrDelay));
Delay_arr_1987_4 = foreach group_arr_1987_4 generate (AVG(id1987_arr_4.ArrDelay));
Delay_arr_1987_5 = foreach group_arr_1987_5 generate (AVG(id1987_arr_5.ArrDelay));
Delay_arr_1987_6 = foreach group_arr_1987_6 generate (AVG(id1987_arr_6.ArrDelay));
Delay_arr_1987_7 = foreach group_arr_1987_7 generate (AVG(id1987_arr_7.ArrDelay));
Delay_arr_1987_8 = foreach group_arr_1987_8 generate (AVG(id1987_arr_8.ArrDelay));
Delay_arr_1987_9 = foreach group_arr_1987_9 generate (AVG(id1987_arr_9.ArrDelay));
Delay_arr_1987_10 = foreach group_arr_1987_10 generate (AVG(id1987_arr_10.ArrDelay));
Delay_arr_1987_11 = foreach group_arr_1987_11 generate (AVG(id1987_arr_11.ArrDelay));
Delay_arr_1987_12 = foreach group_arr_1987_12 generate (AVG(id1987_arr_12.ArrDelay));
Delay_arr_1987_13 = foreach group_arr_1987_13 generate (AVG(id1987_arr_13.ArrDelay));
Delay_arr_1987_14 = foreach group_arr_1987_14 generate (AVG(id1987_arr_14.ArrDelay));
Delay_arr_1987_15 = foreach group_arr_1987_15 generate (AVG(id1987_arr_15.ArrDelay));
Delay_arr_1987_16 = foreach group_arr_1987_16 generate (AVG(id1987_arr_16.ArrDelay));
Delay_arr_1987_17 = foreach group_arr_1987_17 generate (AVG(id1987_arr_17.ArrDelay));
Delay_arr_1987_18 = foreach group_arr_1987_18 generate (AVG(id1987_arr_18.ArrDelay));
Delay_arr_1987_19 = foreach group_arr_1987_19 generate (AVG(id1987_arr_19.ArrDelay));
Delay_arr_1987_20 = foreach group_arr_1987_20 generate (AVG(id1987_arr_20.ArrDelay));
Delay_arr_1987_21 = foreach group_arr_1987_21 generate (AVG(id1987_arr_21.ArrDelay));
Delay_arr_1987_22 = foreach group_arr_1987_22 generate (AVG(id1987_arr_22.ArrDelay));
Delay_arr_1987_23 = foreach group_arr_1987_23 generate (AVG(id1987_arr_23.ArrDelay));
Union1987 = UNION Delay_arr_1987_0,Delay_arr_1987_1,Delay_arr_1987_2,Delay_arr_1987_3,Delay_arr_1987_4,Delay_arr_1987_5,Delay_arr_1987_6,Delay_arr_1987_7,Delay_arr_1987_8,Delay_arr_1987_9,Delay_arr_1987_10,Delay_arr_1987_11,Delay_arr_1987_12,Delay_arr_1987_13,Delay_arr_1987_14,Delay_arr_1987_15,Delay_arr_1987_16,Delay_arr_1987_17,Delay_arr_1987_18,Delay_arr_1987_19,Delay_arr_1987_20,Delay_arr_1987_21,Delay_arr_1987_22,Delay_arr_1987_23;
STORE Union1987 INTO '/user/s31wcp55/q3/1987/arr' USING PigStorage (',');
id1987_dep_0 = filter id1987 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1987_dep_1 = filter id1987 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1987_dep_2 = filter id1987 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1987_dep_3 = filter id1987 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1987_dep_4 = filter id1987 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1987_dep_5 = filter id1987 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1987_dep_6 = filter id1987 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1987_dep_7 = filter id1987 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1987_dep_8 = filter id1987 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1987_dep_9 = filter id1987 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1987_dep_10 = filter id1987 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1987_dep_11 = filter id1987 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1987_dep_12 = filter id1987 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1987_dep_13 = filter id1987 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1987_dep_14 = filter id1987 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1987_dep_15 = filter id1987 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1987_dep_16 = filter id1987 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1987_dep_17 = filter id1987 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1987_dep_18 = filter id1987 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1987_dep_19 = filter id1987 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1987_dep_20 = filter id1987 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1987_dep_21 = filter id1987 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1987_dep_22 = filter id1987 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1987_dep_23 = filter id1987 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1987_0 = group id1987_dep_0 all;
group_dep_1987_1 = group id1987_dep_1 all;
group_dep_1987_2 = group id1987_dep_2 all;
group_dep_1987_3 = group id1987_dep_3 all;
group_dep_1987_4 = group id1987_dep_4 all;
group_dep_1987_5 = group id1987_dep_5 all;
group_dep_1987_6 = group id1987_dep_6 all;
group_dep_1987_7 = group id1987_dep_7 all;
group_dep_1987_8 = group id1987_dep_8 all;
group_dep_1987_9 = group id1987_dep_9 all;
group_dep_1987_10 = group id1987_dep_10 all;
group_dep_1987_11 = group id1987_dep_11 all;
group_dep_1987_12 = group id1987_dep_12 all;
group_dep_1987_13 = group id1987_dep_13 all;
group_dep_1987_14 = group id1987_dep_14 all;
group_dep_1987_15 = group id1987_dep_15 all;
group_dep_1987_16 = group id1987_dep_16 all;
group_dep_1987_17 = group id1987_dep_17 all;
group_dep_1987_18 = group id1987_dep_18 all;
group_dep_1987_19 = group id1987_dep_19 all;
group_dep_1987_20 = group id1987_dep_20 all;
group_dep_1987_21 = group id1987_dep_21 all;
group_dep_1987_22 = group id1987_dep_22 all;
group_dep_1987_23 = group id1987_dep_23 all;
Delay_dep_1987_0 = foreach group_dep_1987_0 generate (AVG(id1987_dep_0.DepDelay));
Delay_dep_1987_1 = foreach group_dep_1987_1 generate (AVG(id1987_dep_1.DepDelay));
Delay_dep_1987_2 = foreach group_dep_1987_2 generate (AVG(id1987_dep_2.DepDelay));
Delay_dep_1987_3 = foreach group_dep_1987_3 generate (AVG(id1987_dep_3.DepDelay));
Delay_dep_1987_4 = foreach group_dep_1987_4 generate (AVG(id1987_dep_4.DepDelay));
Delay_dep_1987_5 = foreach group_dep_1987_5 generate (AVG(id1987_dep_5.DepDelay));
Delay_dep_1987_6 = foreach group_dep_1987_6 generate (AVG(id1987_dep_6.DepDelay));
Delay_dep_1987_7 = foreach group_dep_1987_7 generate (AVG(id1987_dep_7.DepDelay));
Delay_dep_1987_8 = foreach group_dep_1987_8 generate (AVG(id1987_dep_8.DepDelay));
Delay_dep_1987_9 = foreach group_dep_1987_9 generate (AVG(id1987_dep_9.DepDelay));
Delay_dep_1987_10 = foreach group_dep_1987_10 generate (AVG(id1987_dep_10.DepDelay));
Delay_dep_1987_11 = foreach group_dep_1987_11 generate (AVG(id1987_dep_11.DepDelay));
Delay_dep_1987_12 = foreach group_dep_1987_12 generate (AVG(id1987_dep_12.DepDelay));
Delay_dep_1987_13 = foreach group_dep_1987_13 generate (AVG(id1987_dep_13.DepDelay));
Delay_dep_1987_14 = foreach group_dep_1987_14 generate (AVG(id1987_dep_14.DepDelay));
Delay_dep_1987_15 = foreach group_dep_1987_15 generate (AVG(id1987_dep_15.DepDelay));
Delay_dep_1987_16 = foreach group_dep_1987_16 generate (AVG(id1987_dep_16.DepDelay));
Delay_dep_1987_17 = foreach group_dep_1987_17 generate (AVG(id1987_dep_17.DepDelay));
Delay_dep_1987_18 = foreach group_dep_1987_18 generate (AVG(id1987_dep_18.DepDelay));
Delay_dep_1987_19 = foreach group_dep_1987_19 generate (AVG(id1987_dep_19.DepDelay));
Delay_dep_1987_20 = foreach group_dep_1987_20 generate (AVG(id1987_dep_20.DepDelay));
Delay_dep_1987_21 = foreach group_dep_1987_21 generate (AVG(id1987_dep_21.DepDelay));
Delay_dep_1987_22 = foreach group_dep_1987_22 generate (AVG(id1987_dep_22.DepDelay));
Delay_dep_1987_23 = foreach group_dep_1987_23 generate (AVG(id1987_dep_23.DepDelay));
Union1987 = UNION Delay_dep_1987_0,Delay_dep_1987_1,Delay_dep_1987_2,Delay_dep_1987_3,Delay_dep_1987_4,Delay_dep_1987_5,Delay_dep_1987_6,Delay_dep_1987_7,Delay_dep_1987_8,Delay_dep_1987_9,Delay_dep_1987_10,Delay_dep_1987_11,Delay_dep_1987_12,Delay_dep_1987_13,Delay_dep_1987_14,Delay_dep_1987_15,Delay_dep_1987_16,Delay_dep_1987_17,Delay_dep_1987_18,Delay_dep_1987_19,Delay_dep_1987_20,Delay_dep_1987_21,Delay_dep_1987_22,Delay_dep_1987_23;
STORE Union1987 INTO '/user/s31wcp55/q3/1987/dep' USING PigStorage (',');


id1988 = LOAD 'airflight/1988.csv' USING PigStorage(',') AS (
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
id1988_arr_0 = filter id1988 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1988_arr_1 = filter id1988 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1988_arr_2 = filter id1988 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1988_arr_3 = filter id1988 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1988_arr_4 = filter id1988 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1988_arr_5 = filter id1988 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1988_arr_6 = filter id1988 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1988_arr_7 = filter id1988 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1988_arr_8 = filter id1988 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1988_arr_9 = filter id1988 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1988_arr_10 = filter id1988 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1988_arr_11 = filter id1988 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1988_arr_12 = filter id1988 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1988_arr_13 = filter id1988 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1988_arr_14 = filter id1988 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1988_arr_15 = filter id1988 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1988_arr_16 = filter id1988 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1988_arr_17 = filter id1988 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1988_arr_18 = filter id1988 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1988_arr_19 = filter id1988 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1988_arr_20 = filter id1988 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1988_arr_21 = filter id1988 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1988_arr_22 = filter id1988 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1988_arr_23 = filter id1988 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1988_0 = group id1988_arr_0 all;
group_arr_1988_1 = group id1988_arr_1 all;
group_arr_1988_2 = group id1988_arr_2 all;
group_arr_1988_3 = group id1988_arr_3 all;
group_arr_1988_4 = group id1988_arr_4 all;
group_arr_1988_5 = group id1988_arr_5 all;
group_arr_1988_6 = group id1988_arr_6 all;
group_arr_1988_7 = group id1988_arr_7 all;
group_arr_1988_8 = group id1988_arr_8 all;
group_arr_1988_9 = group id1988_arr_9 all;
group_arr_1988_10 = group id1988_arr_10 all;
group_arr_1988_11 = group id1988_arr_11 all;
group_arr_1988_12 = group id1988_arr_12 all;
group_arr_1988_13 = group id1988_arr_13 all;
group_arr_1988_14 = group id1988_arr_14 all;
group_arr_1988_15 = group id1988_arr_15 all;
group_arr_1988_16 = group id1988_arr_16 all;
group_arr_1988_17 = group id1988_arr_17 all;
group_arr_1988_18 = group id1988_arr_18 all;
group_arr_1988_19 = group id1988_arr_19 all;
group_arr_1988_20 = group id1988_arr_20 all;
group_arr_1988_21 = group id1988_arr_21 all;
group_arr_1988_22 = group id1988_arr_22 all;
group_arr_1988_23 = group id1988_arr_23 all;
Delay_arr_1988_0 = foreach group_arr_1988_0 generate (AVG(id1988_arr_0.ArrDelay));
Delay_arr_1988_1 = foreach group_arr_1988_1 generate (AVG(id1988_arr_1.ArrDelay));
Delay_arr_1988_2 = foreach group_arr_1988_2 generate (AVG(id1988_arr_2.ArrDelay));
Delay_arr_1988_3 = foreach group_arr_1988_3 generate (AVG(id1988_arr_3.ArrDelay));
Delay_arr_1988_4 = foreach group_arr_1988_4 generate (AVG(id1988_arr_4.ArrDelay));
Delay_arr_1988_5 = foreach group_arr_1988_5 generate (AVG(id1988_arr_5.ArrDelay));
Delay_arr_1988_6 = foreach group_arr_1988_6 generate (AVG(id1988_arr_6.ArrDelay));
Delay_arr_1988_7 = foreach group_arr_1988_7 generate (AVG(id1988_arr_7.ArrDelay));
Delay_arr_1988_8 = foreach group_arr_1988_8 generate (AVG(id1988_arr_8.ArrDelay));
Delay_arr_1988_9 = foreach group_arr_1988_9 generate (AVG(id1988_arr_9.ArrDelay));
Delay_arr_1988_10 = foreach group_arr_1988_10 generate (AVG(id1988_arr_10.ArrDelay));
Delay_arr_1988_11 = foreach group_arr_1988_11 generate (AVG(id1988_arr_11.ArrDelay));
Delay_arr_1988_12 = foreach group_arr_1988_12 generate (AVG(id1988_arr_12.ArrDelay));
Delay_arr_1988_13 = foreach group_arr_1988_13 generate (AVG(id1988_arr_13.ArrDelay));
Delay_arr_1988_14 = foreach group_arr_1988_14 generate (AVG(id1988_arr_14.ArrDelay));
Delay_arr_1988_15 = foreach group_arr_1988_15 generate (AVG(id1988_arr_15.ArrDelay));
Delay_arr_1988_16 = foreach group_arr_1988_16 generate (AVG(id1988_arr_16.ArrDelay));
Delay_arr_1988_17 = foreach group_arr_1988_17 generate (AVG(id1988_arr_17.ArrDelay));
Delay_arr_1988_18 = foreach group_arr_1988_18 generate (AVG(id1988_arr_18.ArrDelay));
Delay_arr_1988_19 = foreach group_arr_1988_19 generate (AVG(id1988_arr_19.ArrDelay));
Delay_arr_1988_20 = foreach group_arr_1988_20 generate (AVG(id1988_arr_20.ArrDelay));
Delay_arr_1988_21 = foreach group_arr_1988_21 generate (AVG(id1988_arr_21.ArrDelay));
Delay_arr_1988_22 = foreach group_arr_1988_22 generate (AVG(id1988_arr_22.ArrDelay));
Delay_arr_1988_23 = foreach group_arr_1988_23 generate (AVG(id1988_arr_23.ArrDelay));
Union1988 = UNION Delay_arr_1988_0,Delay_arr_1988_1,Delay_arr_1988_2,Delay_arr_1988_3,Delay_arr_1988_4,Delay_arr_1988_5,Delay_arr_1988_6,Delay_arr_1988_7,Delay_arr_1988_8,Delay_arr_1988_9,Delay_arr_1988_10,Delay_arr_1988_11,Delay_arr_1988_12,Delay_arr_1988_13,Delay_arr_1988_14,Delay_arr_1988_15,Delay_arr_1988_16,Delay_arr_1988_17,Delay_arr_1988_18,Delay_arr_1988_19,Delay_arr_1988_20,Delay_arr_1988_21,Delay_arr_1988_22,Delay_arr_1988_23;
STORE Union1988 INTO '/user/s31wcp55/q3/1988/arr' USING PigStorage (',');
id1988_dep_0 = filter id1988 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1988_dep_1 = filter id1988 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1988_dep_2 = filter id1988 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1988_dep_3 = filter id1988 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1988_dep_4 = filter id1988 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1988_dep_5 = filter id1988 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1988_dep_6 = filter id1988 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1988_dep_7 = filter id1988 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1988_dep_8 = filter id1988 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1988_dep_9 = filter id1988 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1988_dep_10 = filter id1988 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1988_dep_11 = filter id1988 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1988_dep_12 = filter id1988 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1988_dep_13 = filter id1988 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1988_dep_14 = filter id1988 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1988_dep_15 = filter id1988 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1988_dep_16 = filter id1988 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1988_dep_17 = filter id1988 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1988_dep_18 = filter id1988 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1988_dep_19 = filter id1988 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1988_dep_20 = filter id1988 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1988_dep_21 = filter id1988 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1988_dep_22 = filter id1988 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1988_dep_23 = filter id1988 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1988_0 = group id1988_dep_0 all;
group_dep_1988_1 = group id1988_dep_1 all;
group_dep_1988_2 = group id1988_dep_2 all;
group_dep_1988_3 = group id1988_dep_3 all;
group_dep_1988_4 = group id1988_dep_4 all;
group_dep_1988_5 = group id1988_dep_5 all;
group_dep_1988_6 = group id1988_dep_6 all;
group_dep_1988_7 = group id1988_dep_7 all;
group_dep_1988_8 = group id1988_dep_8 all;
group_dep_1988_9 = group id1988_dep_9 all;
group_dep_1988_10 = group id1988_dep_10 all;
group_dep_1988_11 = group id1988_dep_11 all;
group_dep_1988_12 = group id1988_dep_12 all;
group_dep_1988_13 = group id1988_dep_13 all;
group_dep_1988_14 = group id1988_dep_14 all;
group_dep_1988_15 = group id1988_dep_15 all;
group_dep_1988_16 = group id1988_dep_16 all;
group_dep_1988_17 = group id1988_dep_17 all;
group_dep_1988_18 = group id1988_dep_18 all;
group_dep_1988_19 = group id1988_dep_19 all;
group_dep_1988_20 = group id1988_dep_20 all;
group_dep_1988_21 = group id1988_dep_21 all;
group_dep_1988_22 = group id1988_dep_22 all;
group_dep_1988_23 = group id1988_dep_23 all;
Delay_dep_1988_0 = foreach group_dep_1988_0 generate (AVG(id1988_dep_0.DepDelay));
Delay_dep_1988_1 = foreach group_dep_1988_1 generate (AVG(id1988_dep_1.DepDelay));
Delay_dep_1988_2 = foreach group_dep_1988_2 generate (AVG(id1988_dep_2.DepDelay));
Delay_dep_1988_3 = foreach group_dep_1988_3 generate (AVG(id1988_dep_3.DepDelay));
Delay_dep_1988_4 = foreach group_dep_1988_4 generate (AVG(id1988_dep_4.DepDelay));
Delay_dep_1988_5 = foreach group_dep_1988_5 generate (AVG(id1988_dep_5.DepDelay));
Delay_dep_1988_6 = foreach group_dep_1988_6 generate (AVG(id1988_dep_6.DepDelay));
Delay_dep_1988_7 = foreach group_dep_1988_7 generate (AVG(id1988_dep_7.DepDelay));
Delay_dep_1988_8 = foreach group_dep_1988_8 generate (AVG(id1988_dep_8.DepDelay));
Delay_dep_1988_9 = foreach group_dep_1988_9 generate (AVG(id1988_dep_9.DepDelay));
Delay_dep_1988_10 = foreach group_dep_1988_10 generate (AVG(id1988_dep_10.DepDelay));
Delay_dep_1988_11 = foreach group_dep_1988_11 generate (AVG(id1988_dep_11.DepDelay));
Delay_dep_1988_12 = foreach group_dep_1988_12 generate (AVG(id1988_dep_12.DepDelay));
Delay_dep_1988_13 = foreach group_dep_1988_13 generate (AVG(id1988_dep_13.DepDelay));
Delay_dep_1988_14 = foreach group_dep_1988_14 generate (AVG(id1988_dep_14.DepDelay));
Delay_dep_1988_15 = foreach group_dep_1988_15 generate (AVG(id1988_dep_15.DepDelay));
Delay_dep_1988_16 = foreach group_dep_1988_16 generate (AVG(id1988_dep_16.DepDelay));
Delay_dep_1988_17 = foreach group_dep_1988_17 generate (AVG(id1988_dep_17.DepDelay));
Delay_dep_1988_18 = foreach group_dep_1988_18 generate (AVG(id1988_dep_18.DepDelay));
Delay_dep_1988_19 = foreach group_dep_1988_19 generate (AVG(id1988_dep_19.DepDelay));
Delay_dep_1988_20 = foreach group_dep_1988_20 generate (AVG(id1988_dep_20.DepDelay));
Delay_dep_1988_21 = foreach group_dep_1988_21 generate (AVG(id1988_dep_21.DepDelay));
Delay_dep_1988_22 = foreach group_dep_1988_22 generate (AVG(id1988_dep_22.DepDelay));
Delay_dep_1988_23 = foreach group_dep_1988_23 generate (AVG(id1988_dep_23.DepDelay));
Union1988 = UNION Delay_dep_1988_0,Delay_dep_1988_1,Delay_dep_1988_2,Delay_dep_1988_3,Delay_dep_1988_4,Delay_dep_1988_5,Delay_dep_1988_6,Delay_dep_1988_7,Delay_dep_1988_8,Delay_dep_1988_9,Delay_dep_1988_10,Delay_dep_1988_11,Delay_dep_1988_12,Delay_dep_1988_13,Delay_dep_1988_14,Delay_dep_1988_15,Delay_dep_1988_16,Delay_dep_1988_17,Delay_dep_1988_18,Delay_dep_1988_19,Delay_dep_1988_20,Delay_dep_1988_21,Delay_dep_1988_22,Delay_dep_1988_23;
STORE Union1988 INTO '/user/s31wcp55/q3/1988/dep' USING PigStorage (',');


id1989 = LOAD 'airflight/1989.csv' USING PigStorage(',') AS (
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
id1989_arr_0 = filter id1989 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1989_arr_1 = filter id1989 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1989_arr_2 = filter id1989 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1989_arr_3 = filter id1989 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1989_arr_4 = filter id1989 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1989_arr_5 = filter id1989 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1989_arr_6 = filter id1989 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1989_arr_7 = filter id1989 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1989_arr_8 = filter id1989 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1989_arr_9 = filter id1989 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1989_arr_10 = filter id1989 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1989_arr_11 = filter id1989 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1989_arr_12 = filter id1989 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1989_arr_13 = filter id1989 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1989_arr_14 = filter id1989 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1989_arr_15 = filter id1989 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1989_arr_16 = filter id1989 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1989_arr_17 = filter id1989 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1989_arr_18 = filter id1989 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1989_arr_19 = filter id1989 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1989_arr_20 = filter id1989 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1989_arr_21 = filter id1989 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1989_arr_22 = filter id1989 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1989_arr_23 = filter id1989 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1989_0 = group id1989_arr_0 all;
group_arr_1989_1 = group id1989_arr_1 all;
group_arr_1989_2 = group id1989_arr_2 all;
group_arr_1989_3 = group id1989_arr_3 all;
group_arr_1989_4 = group id1989_arr_4 all;
group_arr_1989_5 = group id1989_arr_5 all;
group_arr_1989_6 = group id1989_arr_6 all;
group_arr_1989_7 = group id1989_arr_7 all;
group_arr_1989_8 = group id1989_arr_8 all;
group_arr_1989_9 = group id1989_arr_9 all;
group_arr_1989_10 = group id1989_arr_10 all;
group_arr_1989_11 = group id1989_arr_11 all;
group_arr_1989_12 = group id1989_arr_12 all;
group_arr_1989_13 = group id1989_arr_13 all;
group_arr_1989_14 = group id1989_arr_14 all;
group_arr_1989_15 = group id1989_arr_15 all;
group_arr_1989_16 = group id1989_arr_16 all;
group_arr_1989_17 = group id1989_arr_17 all;
group_arr_1989_18 = group id1989_arr_18 all;
group_arr_1989_19 = group id1989_arr_19 all;
group_arr_1989_20 = group id1989_arr_20 all;
group_arr_1989_21 = group id1989_arr_21 all;
group_arr_1989_22 = group id1989_arr_22 all;
group_arr_1989_23 = group id1989_arr_23 all;
Delay_arr_1989_0 = foreach group_arr_1989_0 generate (AVG(id1989_arr_0.ArrDelay));
Delay_arr_1989_1 = foreach group_arr_1989_1 generate (AVG(id1989_arr_1.ArrDelay));
Delay_arr_1989_2 = foreach group_arr_1989_2 generate (AVG(id1989_arr_2.ArrDelay));
Delay_arr_1989_3 = foreach group_arr_1989_3 generate (AVG(id1989_arr_3.ArrDelay));
Delay_arr_1989_4 = foreach group_arr_1989_4 generate (AVG(id1989_arr_4.ArrDelay));
Delay_arr_1989_5 = foreach group_arr_1989_5 generate (AVG(id1989_arr_5.ArrDelay));
Delay_arr_1989_6 = foreach group_arr_1989_6 generate (AVG(id1989_arr_6.ArrDelay));
Delay_arr_1989_7 = foreach group_arr_1989_7 generate (AVG(id1989_arr_7.ArrDelay));
Delay_arr_1989_8 = foreach group_arr_1989_8 generate (AVG(id1989_arr_8.ArrDelay));
Delay_arr_1989_9 = foreach group_arr_1989_9 generate (AVG(id1989_arr_9.ArrDelay));
Delay_arr_1989_10 = foreach group_arr_1989_10 generate (AVG(id1989_arr_10.ArrDelay));
Delay_arr_1989_11 = foreach group_arr_1989_11 generate (AVG(id1989_arr_11.ArrDelay));
Delay_arr_1989_12 = foreach group_arr_1989_12 generate (AVG(id1989_arr_12.ArrDelay));
Delay_arr_1989_13 = foreach group_arr_1989_13 generate (AVG(id1989_arr_13.ArrDelay));
Delay_arr_1989_14 = foreach group_arr_1989_14 generate (AVG(id1989_arr_14.ArrDelay));
Delay_arr_1989_15 = foreach group_arr_1989_15 generate (AVG(id1989_arr_15.ArrDelay));
Delay_arr_1989_16 = foreach group_arr_1989_16 generate (AVG(id1989_arr_16.ArrDelay));
Delay_arr_1989_17 = foreach group_arr_1989_17 generate (AVG(id1989_arr_17.ArrDelay));
Delay_arr_1989_18 = foreach group_arr_1989_18 generate (AVG(id1989_arr_18.ArrDelay));
Delay_arr_1989_19 = foreach group_arr_1989_19 generate (AVG(id1989_arr_19.ArrDelay));
Delay_arr_1989_20 = foreach group_arr_1989_20 generate (AVG(id1989_arr_20.ArrDelay));
Delay_arr_1989_21 = foreach group_arr_1989_21 generate (AVG(id1989_arr_21.ArrDelay));
Delay_arr_1989_22 = foreach group_arr_1989_22 generate (AVG(id1989_arr_22.ArrDelay));
Delay_arr_1989_23 = foreach group_arr_1989_23 generate (AVG(id1989_arr_23.ArrDelay));
Union1989 = UNION Delay_arr_1989_0,Delay_arr_1989_1,Delay_arr_1989_2,Delay_arr_1989_3,Delay_arr_1989_4,Delay_arr_1989_5,Delay_arr_1989_6,Delay_arr_1989_7,Delay_arr_1989_8,Delay_arr_1989_9,Delay_arr_1989_10,Delay_arr_1989_11,Delay_arr_1989_12,Delay_arr_1989_13,Delay_arr_1989_14,Delay_arr_1989_15,Delay_arr_1989_16,Delay_arr_1989_17,Delay_arr_1989_18,Delay_arr_1989_19,Delay_arr_1989_20,Delay_arr_1989_21,Delay_arr_1989_22,Delay_arr_1989_23;
STORE Union1989 INTO '/user/s31wcp55/q3/1989/arr' USING PigStorage (',');
id1989_dep_0 = filter id1989 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1989_dep_1 = filter id1989 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1989_dep_2 = filter id1989 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1989_dep_3 = filter id1989 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1989_dep_4 = filter id1989 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1989_dep_5 = filter id1989 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1989_dep_6 = filter id1989 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1989_dep_7 = filter id1989 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1989_dep_8 = filter id1989 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1989_dep_9 = filter id1989 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1989_dep_10 = filter id1989 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1989_dep_11 = filter id1989 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1989_dep_12 = filter id1989 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1989_dep_13 = filter id1989 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1989_dep_14 = filter id1989 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1989_dep_15 = filter id1989 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1989_dep_16 = filter id1989 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1989_dep_17 = filter id1989 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1989_dep_18 = filter id1989 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1989_dep_19 = filter id1989 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1989_dep_20 = filter id1989 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1989_dep_21 = filter id1989 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1989_dep_22 = filter id1989 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1989_dep_23 = filter id1989 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1989_0 = group id1989_dep_0 all;
group_dep_1989_1 = group id1989_dep_1 all;
group_dep_1989_2 = group id1989_dep_2 all;
group_dep_1989_3 = group id1989_dep_3 all;
group_dep_1989_4 = group id1989_dep_4 all;
group_dep_1989_5 = group id1989_dep_5 all;
group_dep_1989_6 = group id1989_dep_6 all;
group_dep_1989_7 = group id1989_dep_7 all;
group_dep_1989_8 = group id1989_dep_8 all;
group_dep_1989_9 = group id1989_dep_9 all;
group_dep_1989_10 = group id1989_dep_10 all;
group_dep_1989_11 = group id1989_dep_11 all;
group_dep_1989_12 = group id1989_dep_12 all;
group_dep_1989_13 = group id1989_dep_13 all;
group_dep_1989_14 = group id1989_dep_14 all;
group_dep_1989_15 = group id1989_dep_15 all;
group_dep_1989_16 = group id1989_dep_16 all;
group_dep_1989_17 = group id1989_dep_17 all;
group_dep_1989_18 = group id1989_dep_18 all;
group_dep_1989_19 = group id1989_dep_19 all;
group_dep_1989_20 = group id1989_dep_20 all;
group_dep_1989_21 = group id1989_dep_21 all;
group_dep_1989_22 = group id1989_dep_22 all;
group_dep_1989_23 = group id1989_dep_23 all;
Delay_dep_1989_0 = foreach group_dep_1989_0 generate (AVG(id1989_dep_0.DepDelay));
Delay_dep_1989_1 = foreach group_dep_1989_1 generate (AVG(id1989_dep_1.DepDelay));
Delay_dep_1989_2 = foreach group_dep_1989_2 generate (AVG(id1989_dep_2.DepDelay));
Delay_dep_1989_3 = foreach group_dep_1989_3 generate (AVG(id1989_dep_3.DepDelay));
Delay_dep_1989_4 = foreach group_dep_1989_4 generate (AVG(id1989_dep_4.DepDelay));
Delay_dep_1989_5 = foreach group_dep_1989_5 generate (AVG(id1989_dep_5.DepDelay));
Delay_dep_1989_6 = foreach group_dep_1989_6 generate (AVG(id1989_dep_6.DepDelay));
Delay_dep_1989_7 = foreach group_dep_1989_7 generate (AVG(id1989_dep_7.DepDelay));
Delay_dep_1989_8 = foreach group_dep_1989_8 generate (AVG(id1989_dep_8.DepDelay));
Delay_dep_1989_9 = foreach group_dep_1989_9 generate (AVG(id1989_dep_9.DepDelay));
Delay_dep_1989_10 = foreach group_dep_1989_10 generate (AVG(id1989_dep_10.DepDelay));
Delay_dep_1989_11 = foreach group_dep_1989_11 generate (AVG(id1989_dep_11.DepDelay));
Delay_dep_1989_12 = foreach group_dep_1989_12 generate (AVG(id1989_dep_12.DepDelay));
Delay_dep_1989_13 = foreach group_dep_1989_13 generate (AVG(id1989_dep_13.DepDelay));
Delay_dep_1989_14 = foreach group_dep_1989_14 generate (AVG(id1989_dep_14.DepDelay));
Delay_dep_1989_15 = foreach group_dep_1989_15 generate (AVG(id1989_dep_15.DepDelay));
Delay_dep_1989_16 = foreach group_dep_1989_16 generate (AVG(id1989_dep_16.DepDelay));
Delay_dep_1989_17 = foreach group_dep_1989_17 generate (AVG(id1989_dep_17.DepDelay));
Delay_dep_1989_18 = foreach group_dep_1989_18 generate (AVG(id1989_dep_18.DepDelay));
Delay_dep_1989_19 = foreach group_dep_1989_19 generate (AVG(id1989_dep_19.DepDelay));
Delay_dep_1989_20 = foreach group_dep_1989_20 generate (AVG(id1989_dep_20.DepDelay));
Delay_dep_1989_21 = foreach group_dep_1989_21 generate (AVG(id1989_dep_21.DepDelay));
Delay_dep_1989_22 = foreach group_dep_1989_22 generate (AVG(id1989_dep_22.DepDelay));
Delay_dep_1989_23 = foreach group_dep_1989_23 generate (AVG(id1989_dep_23.DepDelay));
Union1989 = UNION Delay_dep_1989_0,Delay_dep_1989_1,Delay_dep_1989_2,Delay_dep_1989_3,Delay_dep_1989_4,Delay_dep_1989_5,Delay_dep_1989_6,Delay_dep_1989_7,Delay_dep_1989_8,Delay_dep_1989_9,Delay_dep_1989_10,Delay_dep_1989_11,Delay_dep_1989_12,Delay_dep_1989_13,Delay_dep_1989_14,Delay_dep_1989_15,Delay_dep_1989_16,Delay_dep_1989_17,Delay_dep_1989_18,Delay_dep_1989_19,Delay_dep_1989_20,Delay_dep_1989_21,Delay_dep_1989_22,Delay_dep_1989_23;
STORE Union1989 INTO '/user/s31wcp55/q3/1989/dep' USING PigStorage (',');


id1990 = LOAD 'airflight/1990.csv' USING PigStorage(',') AS (
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
id1990_arr_0 = filter id1990 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1990_arr_1 = filter id1990 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1990_arr_2 = filter id1990 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1990_arr_3 = filter id1990 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1990_arr_4 = filter id1990 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1990_arr_5 = filter id1990 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1990_arr_6 = filter id1990 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1990_arr_7 = filter id1990 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1990_arr_8 = filter id1990 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1990_arr_9 = filter id1990 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1990_arr_10 = filter id1990 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1990_arr_11 = filter id1990 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1990_arr_12 = filter id1990 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1990_arr_13 = filter id1990 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1990_arr_14 = filter id1990 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1990_arr_15 = filter id1990 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1990_arr_16 = filter id1990 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1990_arr_17 = filter id1990 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1990_arr_18 = filter id1990 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1990_arr_19 = filter id1990 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1990_arr_20 = filter id1990 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1990_arr_21 = filter id1990 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1990_arr_22 = filter id1990 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1990_arr_23 = filter id1990 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1990_0 = group id1990_arr_0 all;
group_arr_1990_1 = group id1990_arr_1 all;
group_arr_1990_2 = group id1990_arr_2 all;
group_arr_1990_3 = group id1990_arr_3 all;
group_arr_1990_4 = group id1990_arr_4 all;
group_arr_1990_5 = group id1990_arr_5 all;
group_arr_1990_6 = group id1990_arr_6 all;
group_arr_1990_7 = group id1990_arr_7 all;
group_arr_1990_8 = group id1990_arr_8 all;
group_arr_1990_9 = group id1990_arr_9 all;
group_arr_1990_10 = group id1990_arr_10 all;
group_arr_1990_11 = group id1990_arr_11 all;
group_arr_1990_12 = group id1990_arr_12 all;
group_arr_1990_13 = group id1990_arr_13 all;
group_arr_1990_14 = group id1990_arr_14 all;
group_arr_1990_15 = group id1990_arr_15 all;
group_arr_1990_16 = group id1990_arr_16 all;
group_arr_1990_17 = group id1990_arr_17 all;
group_arr_1990_18 = group id1990_arr_18 all;
group_arr_1990_19 = group id1990_arr_19 all;
group_arr_1990_20 = group id1990_arr_20 all;
group_arr_1990_21 = group id1990_arr_21 all;
group_arr_1990_22 = group id1990_arr_22 all;
group_arr_1990_23 = group id1990_arr_23 all;
Delay_arr_1990_0 = foreach group_arr_1990_0 generate (AVG(id1990_arr_0.ArrDelay));
Delay_arr_1990_1 = foreach group_arr_1990_1 generate (AVG(id1990_arr_1.ArrDelay));
Delay_arr_1990_2 = foreach group_arr_1990_2 generate (AVG(id1990_arr_2.ArrDelay));
Delay_arr_1990_3 = foreach group_arr_1990_3 generate (AVG(id1990_arr_3.ArrDelay));
Delay_arr_1990_4 = foreach group_arr_1990_4 generate (AVG(id1990_arr_4.ArrDelay));
Delay_arr_1990_5 = foreach group_arr_1990_5 generate (AVG(id1990_arr_5.ArrDelay));
Delay_arr_1990_6 = foreach group_arr_1990_6 generate (AVG(id1990_arr_6.ArrDelay));
Delay_arr_1990_7 = foreach group_arr_1990_7 generate (AVG(id1990_arr_7.ArrDelay));
Delay_arr_1990_8 = foreach group_arr_1990_8 generate (AVG(id1990_arr_8.ArrDelay));
Delay_arr_1990_9 = foreach group_arr_1990_9 generate (AVG(id1990_arr_9.ArrDelay));
Delay_arr_1990_10 = foreach group_arr_1990_10 generate (AVG(id1990_arr_10.ArrDelay));
Delay_arr_1990_11 = foreach group_arr_1990_11 generate (AVG(id1990_arr_11.ArrDelay));
Delay_arr_1990_12 = foreach group_arr_1990_12 generate (AVG(id1990_arr_12.ArrDelay));
Delay_arr_1990_13 = foreach group_arr_1990_13 generate (AVG(id1990_arr_13.ArrDelay));
Delay_arr_1990_14 = foreach group_arr_1990_14 generate (AVG(id1990_arr_14.ArrDelay));
Delay_arr_1990_15 = foreach group_arr_1990_15 generate (AVG(id1990_arr_15.ArrDelay));
Delay_arr_1990_16 = foreach group_arr_1990_16 generate (AVG(id1990_arr_16.ArrDelay));
Delay_arr_1990_17 = foreach group_arr_1990_17 generate (AVG(id1990_arr_17.ArrDelay));
Delay_arr_1990_18 = foreach group_arr_1990_18 generate (AVG(id1990_arr_18.ArrDelay));
Delay_arr_1990_19 = foreach group_arr_1990_19 generate (AVG(id1990_arr_19.ArrDelay));
Delay_arr_1990_20 = foreach group_arr_1990_20 generate (AVG(id1990_arr_20.ArrDelay));
Delay_arr_1990_21 = foreach group_arr_1990_21 generate (AVG(id1990_arr_21.ArrDelay));
Delay_arr_1990_22 = foreach group_arr_1990_22 generate (AVG(id1990_arr_22.ArrDelay));
Delay_arr_1990_23 = foreach group_arr_1990_23 generate (AVG(id1990_arr_23.ArrDelay));
Union1990 = UNION Delay_arr_1990_0,Delay_arr_1990_1,Delay_arr_1990_2,Delay_arr_1990_3,Delay_arr_1990_4,Delay_arr_1990_5,Delay_arr_1990_6,Delay_arr_1990_7,Delay_arr_1990_8,Delay_arr_1990_9,Delay_arr_1990_10,Delay_arr_1990_11,Delay_arr_1990_12,Delay_arr_1990_13,Delay_arr_1990_14,Delay_arr_1990_15,Delay_arr_1990_16,Delay_arr_1990_17,Delay_arr_1990_18,Delay_arr_1990_19,Delay_arr_1990_20,Delay_arr_1990_21,Delay_arr_1990_22,Delay_arr_1990_23;
STORE Union1990 INTO '/user/s31wcp55/q3/1990/arr' USING PigStorage (',');
id1990_dep_0 = filter id1990 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1990_dep_1 = filter id1990 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1990_dep_2 = filter id1990 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1990_dep_3 = filter id1990 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1990_dep_4 = filter id1990 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1990_dep_5 = filter id1990 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1990_dep_6 = filter id1990 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1990_dep_7 = filter id1990 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1990_dep_8 = filter id1990 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1990_dep_9 = filter id1990 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1990_dep_10 = filter id1990 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1990_dep_11 = filter id1990 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1990_dep_12 = filter id1990 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1990_dep_13 = filter id1990 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1990_dep_14 = filter id1990 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1990_dep_15 = filter id1990 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1990_dep_16 = filter id1990 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1990_dep_17 = filter id1990 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1990_dep_18 = filter id1990 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1990_dep_19 = filter id1990 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1990_dep_20 = filter id1990 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1990_dep_21 = filter id1990 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1990_dep_22 = filter id1990 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1990_dep_23 = filter id1990 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1990_0 = group id1990_dep_0 all;
group_dep_1990_1 = group id1990_dep_1 all;
group_dep_1990_2 = group id1990_dep_2 all;
group_dep_1990_3 = group id1990_dep_3 all;
group_dep_1990_4 = group id1990_dep_4 all;
group_dep_1990_5 = group id1990_dep_5 all;
group_dep_1990_6 = group id1990_dep_6 all;
group_dep_1990_7 = group id1990_dep_7 all;
group_dep_1990_8 = group id1990_dep_8 all;
group_dep_1990_9 = group id1990_dep_9 all;
group_dep_1990_10 = group id1990_dep_10 all;
group_dep_1990_11 = group id1990_dep_11 all;
group_dep_1990_12 = group id1990_dep_12 all;
group_dep_1990_13 = group id1990_dep_13 all;
group_dep_1990_14 = group id1990_dep_14 all;
group_dep_1990_15 = group id1990_dep_15 all;
group_dep_1990_16 = group id1990_dep_16 all;
group_dep_1990_17 = group id1990_dep_17 all;
group_dep_1990_18 = group id1990_dep_18 all;
group_dep_1990_19 = group id1990_dep_19 all;
group_dep_1990_20 = group id1990_dep_20 all;
group_dep_1990_21 = group id1990_dep_21 all;
group_dep_1990_22 = group id1990_dep_22 all;
group_dep_1990_23 = group id1990_dep_23 all;
Delay_dep_1990_0 = foreach group_dep_1990_0 generate (AVG(id1990_dep_0.DepDelay));
Delay_dep_1990_1 = foreach group_dep_1990_1 generate (AVG(id1990_dep_1.DepDelay));
Delay_dep_1990_2 = foreach group_dep_1990_2 generate (AVG(id1990_dep_2.DepDelay));
Delay_dep_1990_3 = foreach group_dep_1990_3 generate (AVG(id1990_dep_3.DepDelay));
Delay_dep_1990_4 = foreach group_dep_1990_4 generate (AVG(id1990_dep_4.DepDelay));
Delay_dep_1990_5 = foreach group_dep_1990_5 generate (AVG(id1990_dep_5.DepDelay));
Delay_dep_1990_6 = foreach group_dep_1990_6 generate (AVG(id1990_dep_6.DepDelay));
Delay_dep_1990_7 = foreach group_dep_1990_7 generate (AVG(id1990_dep_7.DepDelay));
Delay_dep_1990_8 = foreach group_dep_1990_8 generate (AVG(id1990_dep_8.DepDelay));
Delay_dep_1990_9 = foreach group_dep_1990_9 generate (AVG(id1990_dep_9.DepDelay));
Delay_dep_1990_10 = foreach group_dep_1990_10 generate (AVG(id1990_dep_10.DepDelay));
Delay_dep_1990_11 = foreach group_dep_1990_11 generate (AVG(id1990_dep_11.DepDelay));
Delay_dep_1990_12 = foreach group_dep_1990_12 generate (AVG(id1990_dep_12.DepDelay));
Delay_dep_1990_13 = foreach group_dep_1990_13 generate (AVG(id1990_dep_13.DepDelay));
Delay_dep_1990_14 = foreach group_dep_1990_14 generate (AVG(id1990_dep_14.DepDelay));
Delay_dep_1990_15 = foreach group_dep_1990_15 generate (AVG(id1990_dep_15.DepDelay));
Delay_dep_1990_16 = foreach group_dep_1990_16 generate (AVG(id1990_dep_16.DepDelay));
Delay_dep_1990_17 = foreach group_dep_1990_17 generate (AVG(id1990_dep_17.DepDelay));
Delay_dep_1990_18 = foreach group_dep_1990_18 generate (AVG(id1990_dep_18.DepDelay));
Delay_dep_1990_19 = foreach group_dep_1990_19 generate (AVG(id1990_dep_19.DepDelay));
Delay_dep_1990_20 = foreach group_dep_1990_20 generate (AVG(id1990_dep_20.DepDelay));
Delay_dep_1990_21 = foreach group_dep_1990_21 generate (AVG(id1990_dep_21.DepDelay));
Delay_dep_1990_22 = foreach group_dep_1990_22 generate (AVG(id1990_dep_22.DepDelay));
Delay_dep_1990_23 = foreach group_dep_1990_23 generate (AVG(id1990_dep_23.DepDelay));
Union1990 = UNION Delay_dep_1990_0,Delay_dep_1990_1,Delay_dep_1990_2,Delay_dep_1990_3,Delay_dep_1990_4,Delay_dep_1990_5,Delay_dep_1990_6,Delay_dep_1990_7,Delay_dep_1990_8,Delay_dep_1990_9,Delay_dep_1990_10,Delay_dep_1990_11,Delay_dep_1990_12,Delay_dep_1990_13,Delay_dep_1990_14,Delay_dep_1990_15,Delay_dep_1990_16,Delay_dep_1990_17,Delay_dep_1990_18,Delay_dep_1990_19,Delay_dep_1990_20,Delay_dep_1990_21,Delay_dep_1990_22,Delay_dep_1990_23;
STORE Union1990 INTO '/user/s31wcp55/q3/1990/dep' USING PigStorage (',');


id1991 = LOAD 'airflight/1991.csv' USING PigStorage(',') AS (
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
id1991_arr_0 = filter id1991 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1991_arr_1 = filter id1991 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1991_arr_2 = filter id1991 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1991_arr_3 = filter id1991 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1991_arr_4 = filter id1991 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1991_arr_5 = filter id1991 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1991_arr_6 = filter id1991 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1991_arr_7 = filter id1991 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1991_arr_8 = filter id1991 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1991_arr_9 = filter id1991 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1991_arr_10 = filter id1991 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1991_arr_11 = filter id1991 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1991_arr_12 = filter id1991 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1991_arr_13 = filter id1991 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1991_arr_14 = filter id1991 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1991_arr_15 = filter id1991 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1991_arr_16 = filter id1991 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1991_arr_17 = filter id1991 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1991_arr_18 = filter id1991 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1991_arr_19 = filter id1991 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1991_arr_20 = filter id1991 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1991_arr_21 = filter id1991 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1991_arr_22 = filter id1991 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1991_arr_23 = filter id1991 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1991_0 = group id1991_arr_0 all;
group_arr_1991_1 = group id1991_arr_1 all;
group_arr_1991_2 = group id1991_arr_2 all;
group_arr_1991_3 = group id1991_arr_3 all;
group_arr_1991_4 = group id1991_arr_4 all;
group_arr_1991_5 = group id1991_arr_5 all;
group_arr_1991_6 = group id1991_arr_6 all;
group_arr_1991_7 = group id1991_arr_7 all;
group_arr_1991_8 = group id1991_arr_8 all;
group_arr_1991_9 = group id1991_arr_9 all;
group_arr_1991_10 = group id1991_arr_10 all;
group_arr_1991_11 = group id1991_arr_11 all;
group_arr_1991_12 = group id1991_arr_12 all;
group_arr_1991_13 = group id1991_arr_13 all;
group_arr_1991_14 = group id1991_arr_14 all;
group_arr_1991_15 = group id1991_arr_15 all;
group_arr_1991_16 = group id1991_arr_16 all;
group_arr_1991_17 = group id1991_arr_17 all;
group_arr_1991_18 = group id1991_arr_18 all;
group_arr_1991_19 = group id1991_arr_19 all;
group_arr_1991_20 = group id1991_arr_20 all;
group_arr_1991_21 = group id1991_arr_21 all;
group_arr_1991_22 = group id1991_arr_22 all;
group_arr_1991_23 = group id1991_arr_23 all;
Delay_arr_1991_0 = foreach group_arr_1991_0 generate (AVG(id1991_arr_0.ArrDelay));
Delay_arr_1991_1 = foreach group_arr_1991_1 generate (AVG(id1991_arr_1.ArrDelay));
Delay_arr_1991_2 = foreach group_arr_1991_2 generate (AVG(id1991_arr_2.ArrDelay));
Delay_arr_1991_3 = foreach group_arr_1991_3 generate (AVG(id1991_arr_3.ArrDelay));
Delay_arr_1991_4 = foreach group_arr_1991_4 generate (AVG(id1991_arr_4.ArrDelay));
Delay_arr_1991_5 = foreach group_arr_1991_5 generate (AVG(id1991_arr_5.ArrDelay));
Delay_arr_1991_6 = foreach group_arr_1991_6 generate (AVG(id1991_arr_6.ArrDelay));
Delay_arr_1991_7 = foreach group_arr_1991_7 generate (AVG(id1991_arr_7.ArrDelay));
Delay_arr_1991_8 = foreach group_arr_1991_8 generate (AVG(id1991_arr_8.ArrDelay));
Delay_arr_1991_9 = foreach group_arr_1991_9 generate (AVG(id1991_arr_9.ArrDelay));
Delay_arr_1991_10 = foreach group_arr_1991_10 generate (AVG(id1991_arr_10.ArrDelay));
Delay_arr_1991_11 = foreach group_arr_1991_11 generate (AVG(id1991_arr_11.ArrDelay));
Delay_arr_1991_12 = foreach group_arr_1991_12 generate (AVG(id1991_arr_12.ArrDelay));
Delay_arr_1991_13 = foreach group_arr_1991_13 generate (AVG(id1991_arr_13.ArrDelay));
Delay_arr_1991_14 = foreach group_arr_1991_14 generate (AVG(id1991_arr_14.ArrDelay));
Delay_arr_1991_15 = foreach group_arr_1991_15 generate (AVG(id1991_arr_15.ArrDelay));
Delay_arr_1991_16 = foreach group_arr_1991_16 generate (AVG(id1991_arr_16.ArrDelay));
Delay_arr_1991_17 = foreach group_arr_1991_17 generate (AVG(id1991_arr_17.ArrDelay));
Delay_arr_1991_18 = foreach group_arr_1991_18 generate (AVG(id1991_arr_18.ArrDelay));
Delay_arr_1991_19 = foreach group_arr_1991_19 generate (AVG(id1991_arr_19.ArrDelay));
Delay_arr_1991_20 = foreach group_arr_1991_20 generate (AVG(id1991_arr_20.ArrDelay));
Delay_arr_1991_21 = foreach group_arr_1991_21 generate (AVG(id1991_arr_21.ArrDelay));
Delay_arr_1991_22 = foreach group_arr_1991_22 generate (AVG(id1991_arr_22.ArrDelay));
Delay_arr_1991_23 = foreach group_arr_1991_23 generate (AVG(id1991_arr_23.ArrDelay));
Union1991 = UNION Delay_arr_1991_0,Delay_arr_1991_1,Delay_arr_1991_2,Delay_arr_1991_3,Delay_arr_1991_4,Delay_arr_1991_5,Delay_arr_1991_6,Delay_arr_1991_7,Delay_arr_1991_8,Delay_arr_1991_9,Delay_arr_1991_10,Delay_arr_1991_11,Delay_arr_1991_12,Delay_arr_1991_13,Delay_arr_1991_14,Delay_arr_1991_15,Delay_arr_1991_16,Delay_arr_1991_17,Delay_arr_1991_18,Delay_arr_1991_19,Delay_arr_1991_20,Delay_arr_1991_21,Delay_arr_1991_22,Delay_arr_1991_23;
STORE Union1991 INTO '/user/s31wcp55/q3/1991/arr' USING PigStorage (',');
id1991_dep_0 = filter id1991 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1991_dep_1 = filter id1991 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1991_dep_2 = filter id1991 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1991_dep_3 = filter id1991 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1991_dep_4 = filter id1991 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1991_dep_5 = filter id1991 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1991_dep_6 = filter id1991 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1991_dep_7 = filter id1991 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1991_dep_8 = filter id1991 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1991_dep_9 = filter id1991 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1991_dep_10 = filter id1991 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1991_dep_11 = filter id1991 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1991_dep_12 = filter id1991 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1991_dep_13 = filter id1991 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1991_dep_14 = filter id1991 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1991_dep_15 = filter id1991 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1991_dep_16 = filter id1991 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1991_dep_17 = filter id1991 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1991_dep_18 = filter id1991 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1991_dep_19 = filter id1991 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1991_dep_20 = filter id1991 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1991_dep_21 = filter id1991 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1991_dep_22 = filter id1991 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1991_dep_23 = filter id1991 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1991_0 = group id1991_dep_0 all;
group_dep_1991_1 = group id1991_dep_1 all;
group_dep_1991_2 = group id1991_dep_2 all;
group_dep_1991_3 = group id1991_dep_3 all;
group_dep_1991_4 = group id1991_dep_4 all;
group_dep_1991_5 = group id1991_dep_5 all;
group_dep_1991_6 = group id1991_dep_6 all;
group_dep_1991_7 = group id1991_dep_7 all;
group_dep_1991_8 = group id1991_dep_8 all;
group_dep_1991_9 = group id1991_dep_9 all;
group_dep_1991_10 = group id1991_dep_10 all;
group_dep_1991_11 = group id1991_dep_11 all;
group_dep_1991_12 = group id1991_dep_12 all;
group_dep_1991_13 = group id1991_dep_13 all;
group_dep_1991_14 = group id1991_dep_14 all;
group_dep_1991_15 = group id1991_dep_15 all;
group_dep_1991_16 = group id1991_dep_16 all;
group_dep_1991_17 = group id1991_dep_17 all;
group_dep_1991_18 = group id1991_dep_18 all;
group_dep_1991_19 = group id1991_dep_19 all;
group_dep_1991_20 = group id1991_dep_20 all;
group_dep_1991_21 = group id1991_dep_21 all;
group_dep_1991_22 = group id1991_dep_22 all;
group_dep_1991_23 = group id1991_dep_23 all;
Delay_dep_1991_0 = foreach group_dep_1991_0 generate (AVG(id1991_dep_0.DepDelay));
Delay_dep_1991_1 = foreach group_dep_1991_1 generate (AVG(id1991_dep_1.DepDelay));
Delay_dep_1991_2 = foreach group_dep_1991_2 generate (AVG(id1991_dep_2.DepDelay));
Delay_dep_1991_3 = foreach group_dep_1991_3 generate (AVG(id1991_dep_3.DepDelay));
Delay_dep_1991_4 = foreach group_dep_1991_4 generate (AVG(id1991_dep_4.DepDelay));
Delay_dep_1991_5 = foreach group_dep_1991_5 generate (AVG(id1991_dep_5.DepDelay));
Delay_dep_1991_6 = foreach group_dep_1991_6 generate (AVG(id1991_dep_6.DepDelay));
Delay_dep_1991_7 = foreach group_dep_1991_7 generate (AVG(id1991_dep_7.DepDelay));
Delay_dep_1991_8 = foreach group_dep_1991_8 generate (AVG(id1991_dep_8.DepDelay));
Delay_dep_1991_9 = foreach group_dep_1991_9 generate (AVG(id1991_dep_9.DepDelay));
Delay_dep_1991_10 = foreach group_dep_1991_10 generate (AVG(id1991_dep_10.DepDelay));
Delay_dep_1991_11 = foreach group_dep_1991_11 generate (AVG(id1991_dep_11.DepDelay));
Delay_dep_1991_12 = foreach group_dep_1991_12 generate (AVG(id1991_dep_12.DepDelay));
Delay_dep_1991_13 = foreach group_dep_1991_13 generate (AVG(id1991_dep_13.DepDelay));
Delay_dep_1991_14 = foreach group_dep_1991_14 generate (AVG(id1991_dep_14.DepDelay));
Delay_dep_1991_15 = foreach group_dep_1991_15 generate (AVG(id1991_dep_15.DepDelay));
Delay_dep_1991_16 = foreach group_dep_1991_16 generate (AVG(id1991_dep_16.DepDelay));
Delay_dep_1991_17 = foreach group_dep_1991_17 generate (AVG(id1991_dep_17.DepDelay));
Delay_dep_1991_18 = foreach group_dep_1991_18 generate (AVG(id1991_dep_18.DepDelay));
Delay_dep_1991_19 = foreach group_dep_1991_19 generate (AVG(id1991_dep_19.DepDelay));
Delay_dep_1991_20 = foreach group_dep_1991_20 generate (AVG(id1991_dep_20.DepDelay));
Delay_dep_1991_21 = foreach group_dep_1991_21 generate (AVG(id1991_dep_21.DepDelay));
Delay_dep_1991_22 = foreach group_dep_1991_22 generate (AVG(id1991_dep_22.DepDelay));
Delay_dep_1991_23 = foreach group_dep_1991_23 generate (AVG(id1991_dep_23.DepDelay));
Union1991 = UNION Delay_dep_1991_0,Delay_dep_1991_1,Delay_dep_1991_2,Delay_dep_1991_3,Delay_dep_1991_4,Delay_dep_1991_5,Delay_dep_1991_6,Delay_dep_1991_7,Delay_dep_1991_8,Delay_dep_1991_9,Delay_dep_1991_10,Delay_dep_1991_11,Delay_dep_1991_12,Delay_dep_1991_13,Delay_dep_1991_14,Delay_dep_1991_15,Delay_dep_1991_16,Delay_dep_1991_17,Delay_dep_1991_18,Delay_dep_1991_19,Delay_dep_1991_20,Delay_dep_1991_21,Delay_dep_1991_22,Delay_dep_1991_23;
STORE Union1991 INTO '/user/s31wcp55/q3/1991/dep' USING PigStorage (',');


id1992 = LOAD 'airflight/1992.csv' USING PigStorage(',') AS (
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
id1992_arr_0 = filter id1992 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1992_arr_1 = filter id1992 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1992_arr_2 = filter id1992 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1992_arr_3 = filter id1992 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1992_arr_4 = filter id1992 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1992_arr_5 = filter id1992 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1992_arr_6 = filter id1992 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1992_arr_7 = filter id1992 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1992_arr_8 = filter id1992 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1992_arr_9 = filter id1992 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1992_arr_10 = filter id1992 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1992_arr_11 = filter id1992 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1992_arr_12 = filter id1992 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1992_arr_13 = filter id1992 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1992_arr_14 = filter id1992 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1992_arr_15 = filter id1992 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1992_arr_16 = filter id1992 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1992_arr_17 = filter id1992 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1992_arr_18 = filter id1992 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1992_arr_19 = filter id1992 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1992_arr_20 = filter id1992 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1992_arr_21 = filter id1992 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1992_arr_22 = filter id1992 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1992_arr_23 = filter id1992 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1992_0 = group id1992_arr_0 all;
group_arr_1992_1 = group id1992_arr_1 all;
group_arr_1992_2 = group id1992_arr_2 all;
group_arr_1992_3 = group id1992_arr_3 all;
group_arr_1992_4 = group id1992_arr_4 all;
group_arr_1992_5 = group id1992_arr_5 all;
group_arr_1992_6 = group id1992_arr_6 all;
group_arr_1992_7 = group id1992_arr_7 all;
group_arr_1992_8 = group id1992_arr_8 all;
group_arr_1992_9 = group id1992_arr_9 all;
group_arr_1992_10 = group id1992_arr_10 all;
group_arr_1992_11 = group id1992_arr_11 all;
group_arr_1992_12 = group id1992_arr_12 all;
group_arr_1992_13 = group id1992_arr_13 all;
group_arr_1992_14 = group id1992_arr_14 all;
group_arr_1992_15 = group id1992_arr_15 all;
group_arr_1992_16 = group id1992_arr_16 all;
group_arr_1992_17 = group id1992_arr_17 all;
group_arr_1992_18 = group id1992_arr_18 all;
group_arr_1992_19 = group id1992_arr_19 all;
group_arr_1992_20 = group id1992_arr_20 all;
group_arr_1992_21 = group id1992_arr_21 all;
group_arr_1992_22 = group id1992_arr_22 all;
group_arr_1992_23 = group id1992_arr_23 all;
Delay_arr_1992_0 = foreach group_arr_1992_0 generate (AVG(id1992_arr_0.ArrDelay));
Delay_arr_1992_1 = foreach group_arr_1992_1 generate (AVG(id1992_arr_1.ArrDelay));
Delay_arr_1992_2 = foreach group_arr_1992_2 generate (AVG(id1992_arr_2.ArrDelay));
Delay_arr_1992_3 = foreach group_arr_1992_3 generate (AVG(id1992_arr_3.ArrDelay));
Delay_arr_1992_4 = foreach group_arr_1992_4 generate (AVG(id1992_arr_4.ArrDelay));
Delay_arr_1992_5 = foreach group_arr_1992_5 generate (AVG(id1992_arr_5.ArrDelay));
Delay_arr_1992_6 = foreach group_arr_1992_6 generate (AVG(id1992_arr_6.ArrDelay));
Delay_arr_1992_7 = foreach group_arr_1992_7 generate (AVG(id1992_arr_7.ArrDelay));
Delay_arr_1992_8 = foreach group_arr_1992_8 generate (AVG(id1992_arr_8.ArrDelay));
Delay_arr_1992_9 = foreach group_arr_1992_9 generate (AVG(id1992_arr_9.ArrDelay));
Delay_arr_1992_10 = foreach group_arr_1992_10 generate (AVG(id1992_arr_10.ArrDelay));
Delay_arr_1992_11 = foreach group_arr_1992_11 generate (AVG(id1992_arr_11.ArrDelay));
Delay_arr_1992_12 = foreach group_arr_1992_12 generate (AVG(id1992_arr_12.ArrDelay));
Delay_arr_1992_13 = foreach group_arr_1992_13 generate (AVG(id1992_arr_13.ArrDelay));
Delay_arr_1992_14 = foreach group_arr_1992_14 generate (AVG(id1992_arr_14.ArrDelay));
Delay_arr_1992_15 = foreach group_arr_1992_15 generate (AVG(id1992_arr_15.ArrDelay));
Delay_arr_1992_16 = foreach group_arr_1992_16 generate (AVG(id1992_arr_16.ArrDelay));
Delay_arr_1992_17 = foreach group_arr_1992_17 generate (AVG(id1992_arr_17.ArrDelay));
Delay_arr_1992_18 = foreach group_arr_1992_18 generate (AVG(id1992_arr_18.ArrDelay));
Delay_arr_1992_19 = foreach group_arr_1992_19 generate (AVG(id1992_arr_19.ArrDelay));
Delay_arr_1992_20 = foreach group_arr_1992_20 generate (AVG(id1992_arr_20.ArrDelay));
Delay_arr_1992_21 = foreach group_arr_1992_21 generate (AVG(id1992_arr_21.ArrDelay));
Delay_arr_1992_22 = foreach group_arr_1992_22 generate (AVG(id1992_arr_22.ArrDelay));
Delay_arr_1992_23 = foreach group_arr_1992_23 generate (AVG(id1992_arr_23.ArrDelay));
Union1992 = UNION Delay_arr_1992_0,Delay_arr_1992_1,Delay_arr_1992_2,Delay_arr_1992_3,Delay_arr_1992_4,Delay_arr_1992_5,Delay_arr_1992_6,Delay_arr_1992_7,Delay_arr_1992_8,Delay_arr_1992_9,Delay_arr_1992_10,Delay_arr_1992_11,Delay_arr_1992_12,Delay_arr_1992_13,Delay_arr_1992_14,Delay_arr_1992_15,Delay_arr_1992_16,Delay_arr_1992_17,Delay_arr_1992_18,Delay_arr_1992_19,Delay_arr_1992_20,Delay_arr_1992_21,Delay_arr_1992_22,Delay_arr_1992_23;
STORE Union1992 INTO '/user/s31wcp55/q3/1992/arr' USING PigStorage (',');
id1992_dep_0 = filter id1992 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1992_dep_1 = filter id1992 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1992_dep_2 = filter id1992 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1992_dep_3 = filter id1992 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1992_dep_4 = filter id1992 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1992_dep_5 = filter id1992 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1992_dep_6 = filter id1992 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1992_dep_7 = filter id1992 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1992_dep_8 = filter id1992 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1992_dep_9 = filter id1992 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1992_dep_10 = filter id1992 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1992_dep_11 = filter id1992 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1992_dep_12 = filter id1992 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1992_dep_13 = filter id1992 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1992_dep_14 = filter id1992 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1992_dep_15 = filter id1992 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1992_dep_16 = filter id1992 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1992_dep_17 = filter id1992 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1992_dep_18 = filter id1992 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1992_dep_19 = filter id1992 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1992_dep_20 = filter id1992 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1992_dep_21 = filter id1992 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1992_dep_22 = filter id1992 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1992_dep_23 = filter id1992 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1992_0 = group id1992_dep_0 all;
group_dep_1992_1 = group id1992_dep_1 all;
group_dep_1992_2 = group id1992_dep_2 all;
group_dep_1992_3 = group id1992_dep_3 all;
group_dep_1992_4 = group id1992_dep_4 all;
group_dep_1992_5 = group id1992_dep_5 all;
group_dep_1992_6 = group id1992_dep_6 all;
group_dep_1992_7 = group id1992_dep_7 all;
group_dep_1992_8 = group id1992_dep_8 all;
group_dep_1992_9 = group id1992_dep_9 all;
group_dep_1992_10 = group id1992_dep_10 all;
group_dep_1992_11 = group id1992_dep_11 all;
group_dep_1992_12 = group id1992_dep_12 all;
group_dep_1992_13 = group id1992_dep_13 all;
group_dep_1992_14 = group id1992_dep_14 all;
group_dep_1992_15 = group id1992_dep_15 all;
group_dep_1992_16 = group id1992_dep_16 all;
group_dep_1992_17 = group id1992_dep_17 all;
group_dep_1992_18 = group id1992_dep_18 all;
group_dep_1992_19 = group id1992_dep_19 all;
group_dep_1992_20 = group id1992_dep_20 all;
group_dep_1992_21 = group id1992_dep_21 all;
group_dep_1992_22 = group id1992_dep_22 all;
group_dep_1992_23 = group id1992_dep_23 all;
Delay_dep_1992_0 = foreach group_dep_1992_0 generate (AVG(id1992_dep_0.DepDelay));
Delay_dep_1992_1 = foreach group_dep_1992_1 generate (AVG(id1992_dep_1.DepDelay));
Delay_dep_1992_2 = foreach group_dep_1992_2 generate (AVG(id1992_dep_2.DepDelay));
Delay_dep_1992_3 = foreach group_dep_1992_3 generate (AVG(id1992_dep_3.DepDelay));
Delay_dep_1992_4 = foreach group_dep_1992_4 generate (AVG(id1992_dep_4.DepDelay));
Delay_dep_1992_5 = foreach group_dep_1992_5 generate (AVG(id1992_dep_5.DepDelay));
Delay_dep_1992_6 = foreach group_dep_1992_6 generate (AVG(id1992_dep_6.DepDelay));
Delay_dep_1992_7 = foreach group_dep_1992_7 generate (AVG(id1992_dep_7.DepDelay));
Delay_dep_1992_8 = foreach group_dep_1992_8 generate (AVG(id1992_dep_8.DepDelay));
Delay_dep_1992_9 = foreach group_dep_1992_9 generate (AVG(id1992_dep_9.DepDelay));
Delay_dep_1992_10 = foreach group_dep_1992_10 generate (AVG(id1992_dep_10.DepDelay));
Delay_dep_1992_11 = foreach group_dep_1992_11 generate (AVG(id1992_dep_11.DepDelay));
Delay_dep_1992_12 = foreach group_dep_1992_12 generate (AVG(id1992_dep_12.DepDelay));
Delay_dep_1992_13 = foreach group_dep_1992_13 generate (AVG(id1992_dep_13.DepDelay));
Delay_dep_1992_14 = foreach group_dep_1992_14 generate (AVG(id1992_dep_14.DepDelay));
Delay_dep_1992_15 = foreach group_dep_1992_15 generate (AVG(id1992_dep_15.DepDelay));
Delay_dep_1992_16 = foreach group_dep_1992_16 generate (AVG(id1992_dep_16.DepDelay));
Delay_dep_1992_17 = foreach group_dep_1992_17 generate (AVG(id1992_dep_17.DepDelay));
Delay_dep_1992_18 = foreach group_dep_1992_18 generate (AVG(id1992_dep_18.DepDelay));
Delay_dep_1992_19 = foreach group_dep_1992_19 generate (AVG(id1992_dep_19.DepDelay));
Delay_dep_1992_20 = foreach group_dep_1992_20 generate (AVG(id1992_dep_20.DepDelay));
Delay_dep_1992_21 = foreach group_dep_1992_21 generate (AVG(id1992_dep_21.DepDelay));
Delay_dep_1992_22 = foreach group_dep_1992_22 generate (AVG(id1992_dep_22.DepDelay));
Delay_dep_1992_23 = foreach group_dep_1992_23 generate (AVG(id1992_dep_23.DepDelay));
Union1992 = UNION Delay_dep_1992_0,Delay_dep_1992_1,Delay_dep_1992_2,Delay_dep_1992_3,Delay_dep_1992_4,Delay_dep_1992_5,Delay_dep_1992_6,Delay_dep_1992_7,Delay_dep_1992_8,Delay_dep_1992_9,Delay_dep_1992_10,Delay_dep_1992_11,Delay_dep_1992_12,Delay_dep_1992_13,Delay_dep_1992_14,Delay_dep_1992_15,Delay_dep_1992_16,Delay_dep_1992_17,Delay_dep_1992_18,Delay_dep_1992_19,Delay_dep_1992_20,Delay_dep_1992_21,Delay_dep_1992_22,Delay_dep_1992_23;
STORE Union1992 INTO '/user/s31wcp55/q3/1992/dep' USING PigStorage (',');


id1993 = LOAD 'airflight/1993.csv' USING PigStorage(',') AS (
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
id1993_arr_0 = filter id1993 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1993_arr_1 = filter id1993 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1993_arr_2 = filter id1993 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1993_arr_3 = filter id1993 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1993_arr_4 = filter id1993 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1993_arr_5 = filter id1993 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1993_arr_6 = filter id1993 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1993_arr_7 = filter id1993 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1993_arr_8 = filter id1993 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1993_arr_9 = filter id1993 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1993_arr_10 = filter id1993 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1993_arr_11 = filter id1993 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1993_arr_12 = filter id1993 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1993_arr_13 = filter id1993 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1993_arr_14 = filter id1993 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1993_arr_15 = filter id1993 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1993_arr_16 = filter id1993 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1993_arr_17 = filter id1993 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1993_arr_18 = filter id1993 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1993_arr_19 = filter id1993 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1993_arr_20 = filter id1993 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1993_arr_21 = filter id1993 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1993_arr_22 = filter id1993 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1993_arr_23 = filter id1993 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1993_0 = group id1993_arr_0 all;
group_arr_1993_1 = group id1993_arr_1 all;
group_arr_1993_2 = group id1993_arr_2 all;
group_arr_1993_3 = group id1993_arr_3 all;
group_arr_1993_4 = group id1993_arr_4 all;
group_arr_1993_5 = group id1993_arr_5 all;
group_arr_1993_6 = group id1993_arr_6 all;
group_arr_1993_7 = group id1993_arr_7 all;
group_arr_1993_8 = group id1993_arr_8 all;
group_arr_1993_9 = group id1993_arr_9 all;
group_arr_1993_10 = group id1993_arr_10 all;
group_arr_1993_11 = group id1993_arr_11 all;
group_arr_1993_12 = group id1993_arr_12 all;
group_arr_1993_13 = group id1993_arr_13 all;
group_arr_1993_14 = group id1993_arr_14 all;
group_arr_1993_15 = group id1993_arr_15 all;
group_arr_1993_16 = group id1993_arr_16 all;
group_arr_1993_17 = group id1993_arr_17 all;
group_arr_1993_18 = group id1993_arr_18 all;
group_arr_1993_19 = group id1993_arr_19 all;
group_arr_1993_20 = group id1993_arr_20 all;
group_arr_1993_21 = group id1993_arr_21 all;
group_arr_1993_22 = group id1993_arr_22 all;
group_arr_1993_23 = group id1993_arr_23 all;
Delay_arr_1993_0 = foreach group_arr_1993_0 generate (AVG(id1993_arr_0.ArrDelay));
Delay_arr_1993_1 = foreach group_arr_1993_1 generate (AVG(id1993_arr_1.ArrDelay));
Delay_arr_1993_2 = foreach group_arr_1993_2 generate (AVG(id1993_arr_2.ArrDelay));
Delay_arr_1993_3 = foreach group_arr_1993_3 generate (AVG(id1993_arr_3.ArrDelay));
Delay_arr_1993_4 = foreach group_arr_1993_4 generate (AVG(id1993_arr_4.ArrDelay));
Delay_arr_1993_5 = foreach group_arr_1993_5 generate (AVG(id1993_arr_5.ArrDelay));
Delay_arr_1993_6 = foreach group_arr_1993_6 generate (AVG(id1993_arr_6.ArrDelay));
Delay_arr_1993_7 = foreach group_arr_1993_7 generate (AVG(id1993_arr_7.ArrDelay));
Delay_arr_1993_8 = foreach group_arr_1993_8 generate (AVG(id1993_arr_8.ArrDelay));
Delay_arr_1993_9 = foreach group_arr_1993_9 generate (AVG(id1993_arr_9.ArrDelay));
Delay_arr_1993_10 = foreach group_arr_1993_10 generate (AVG(id1993_arr_10.ArrDelay));
Delay_arr_1993_11 = foreach group_arr_1993_11 generate (AVG(id1993_arr_11.ArrDelay));
Delay_arr_1993_12 = foreach group_arr_1993_12 generate (AVG(id1993_arr_12.ArrDelay));
Delay_arr_1993_13 = foreach group_arr_1993_13 generate (AVG(id1993_arr_13.ArrDelay));
Delay_arr_1993_14 = foreach group_arr_1993_14 generate (AVG(id1993_arr_14.ArrDelay));
Delay_arr_1993_15 = foreach group_arr_1993_15 generate (AVG(id1993_arr_15.ArrDelay));
Delay_arr_1993_16 = foreach group_arr_1993_16 generate (AVG(id1993_arr_16.ArrDelay));
Delay_arr_1993_17 = foreach group_arr_1993_17 generate (AVG(id1993_arr_17.ArrDelay));
Delay_arr_1993_18 = foreach group_arr_1993_18 generate (AVG(id1993_arr_18.ArrDelay));
Delay_arr_1993_19 = foreach group_arr_1993_19 generate (AVG(id1993_arr_19.ArrDelay));
Delay_arr_1993_20 = foreach group_arr_1993_20 generate (AVG(id1993_arr_20.ArrDelay));
Delay_arr_1993_21 = foreach group_arr_1993_21 generate (AVG(id1993_arr_21.ArrDelay));
Delay_arr_1993_22 = foreach group_arr_1993_22 generate (AVG(id1993_arr_22.ArrDelay));
Delay_arr_1993_23 = foreach group_arr_1993_23 generate (AVG(id1993_arr_23.ArrDelay));
Union1993 = UNION Delay_arr_1993_0,Delay_arr_1993_1,Delay_arr_1993_2,Delay_arr_1993_3,Delay_arr_1993_4,Delay_arr_1993_5,Delay_arr_1993_6,Delay_arr_1993_7,Delay_arr_1993_8,Delay_arr_1993_9,Delay_arr_1993_10,Delay_arr_1993_11,Delay_arr_1993_12,Delay_arr_1993_13,Delay_arr_1993_14,Delay_arr_1993_15,Delay_arr_1993_16,Delay_arr_1993_17,Delay_arr_1993_18,Delay_arr_1993_19,Delay_arr_1993_20,Delay_arr_1993_21,Delay_arr_1993_22,Delay_arr_1993_23;
STORE Union1993 INTO '/user/s31wcp55/q3/1993/arr' USING PigStorage (',');
id1993_dep_0 = filter id1993 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1993_dep_1 = filter id1993 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1993_dep_2 = filter id1993 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1993_dep_3 = filter id1993 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1993_dep_4 = filter id1993 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1993_dep_5 = filter id1993 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1993_dep_6 = filter id1993 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1993_dep_7 = filter id1993 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1993_dep_8 = filter id1993 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1993_dep_9 = filter id1993 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1993_dep_10 = filter id1993 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1993_dep_11 = filter id1993 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1993_dep_12 = filter id1993 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1993_dep_13 = filter id1993 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1993_dep_14 = filter id1993 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1993_dep_15 = filter id1993 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1993_dep_16 = filter id1993 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1993_dep_17 = filter id1993 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1993_dep_18 = filter id1993 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1993_dep_19 = filter id1993 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1993_dep_20 = filter id1993 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1993_dep_21 = filter id1993 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1993_dep_22 = filter id1993 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1993_dep_23 = filter id1993 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1993_0 = group id1993_dep_0 all;
group_dep_1993_1 = group id1993_dep_1 all;
group_dep_1993_2 = group id1993_dep_2 all;
group_dep_1993_3 = group id1993_dep_3 all;
group_dep_1993_4 = group id1993_dep_4 all;
group_dep_1993_5 = group id1993_dep_5 all;
group_dep_1993_6 = group id1993_dep_6 all;
group_dep_1993_7 = group id1993_dep_7 all;
group_dep_1993_8 = group id1993_dep_8 all;
group_dep_1993_9 = group id1993_dep_9 all;
group_dep_1993_10 = group id1993_dep_10 all;
group_dep_1993_11 = group id1993_dep_11 all;
group_dep_1993_12 = group id1993_dep_12 all;
group_dep_1993_13 = group id1993_dep_13 all;
group_dep_1993_14 = group id1993_dep_14 all;
group_dep_1993_15 = group id1993_dep_15 all;
group_dep_1993_16 = group id1993_dep_16 all;
group_dep_1993_17 = group id1993_dep_17 all;
group_dep_1993_18 = group id1993_dep_18 all;
group_dep_1993_19 = group id1993_dep_19 all;
group_dep_1993_20 = group id1993_dep_20 all;
group_dep_1993_21 = group id1993_dep_21 all;
group_dep_1993_22 = group id1993_dep_22 all;
group_dep_1993_23 = group id1993_dep_23 all;
Delay_dep_1993_0 = foreach group_dep_1993_0 generate (AVG(id1993_dep_0.DepDelay));
Delay_dep_1993_1 = foreach group_dep_1993_1 generate (AVG(id1993_dep_1.DepDelay));
Delay_dep_1993_2 = foreach group_dep_1993_2 generate (AVG(id1993_dep_2.DepDelay));
Delay_dep_1993_3 = foreach group_dep_1993_3 generate (AVG(id1993_dep_3.DepDelay));
Delay_dep_1993_4 = foreach group_dep_1993_4 generate (AVG(id1993_dep_4.DepDelay));
Delay_dep_1993_5 = foreach group_dep_1993_5 generate (AVG(id1993_dep_5.DepDelay));
Delay_dep_1993_6 = foreach group_dep_1993_6 generate (AVG(id1993_dep_6.DepDelay));
Delay_dep_1993_7 = foreach group_dep_1993_7 generate (AVG(id1993_dep_7.DepDelay));
Delay_dep_1993_8 = foreach group_dep_1993_8 generate (AVG(id1993_dep_8.DepDelay));
Delay_dep_1993_9 = foreach group_dep_1993_9 generate (AVG(id1993_dep_9.DepDelay));
Delay_dep_1993_10 = foreach group_dep_1993_10 generate (AVG(id1993_dep_10.DepDelay));
Delay_dep_1993_11 = foreach group_dep_1993_11 generate (AVG(id1993_dep_11.DepDelay));
Delay_dep_1993_12 = foreach group_dep_1993_12 generate (AVG(id1993_dep_12.DepDelay));
Delay_dep_1993_13 = foreach group_dep_1993_13 generate (AVG(id1993_dep_13.DepDelay));
Delay_dep_1993_14 = foreach group_dep_1993_14 generate (AVG(id1993_dep_14.DepDelay));
Delay_dep_1993_15 = foreach group_dep_1993_15 generate (AVG(id1993_dep_15.DepDelay));
Delay_dep_1993_16 = foreach group_dep_1993_16 generate (AVG(id1993_dep_16.DepDelay));
Delay_dep_1993_17 = foreach group_dep_1993_17 generate (AVG(id1993_dep_17.DepDelay));
Delay_dep_1993_18 = foreach group_dep_1993_18 generate (AVG(id1993_dep_18.DepDelay));
Delay_dep_1993_19 = foreach group_dep_1993_19 generate (AVG(id1993_dep_19.DepDelay));
Delay_dep_1993_20 = foreach group_dep_1993_20 generate (AVG(id1993_dep_20.DepDelay));
Delay_dep_1993_21 = foreach group_dep_1993_21 generate (AVG(id1993_dep_21.DepDelay));
Delay_dep_1993_22 = foreach group_dep_1993_22 generate (AVG(id1993_dep_22.DepDelay));
Delay_dep_1993_23 = foreach group_dep_1993_23 generate (AVG(id1993_dep_23.DepDelay));
Union1993 = UNION Delay_dep_1993_0,Delay_dep_1993_1,Delay_dep_1993_2,Delay_dep_1993_3,Delay_dep_1993_4,Delay_dep_1993_5,Delay_dep_1993_6,Delay_dep_1993_7,Delay_dep_1993_8,Delay_dep_1993_9,Delay_dep_1993_10,Delay_dep_1993_11,Delay_dep_1993_12,Delay_dep_1993_13,Delay_dep_1993_14,Delay_dep_1993_15,Delay_dep_1993_16,Delay_dep_1993_17,Delay_dep_1993_18,Delay_dep_1993_19,Delay_dep_1993_20,Delay_dep_1993_21,Delay_dep_1993_22,Delay_dep_1993_23;
STORE Union1993 INTO '/user/s31wcp55/q3/1993/dep' USING PigStorage (',');


id1994 = LOAD 'airflight/1994.csv' USING PigStorage(',') AS (
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
id1994_arr_0 = filter id1994 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1994_arr_1 = filter id1994 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1994_arr_2 = filter id1994 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1994_arr_3 = filter id1994 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1994_arr_4 = filter id1994 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1994_arr_5 = filter id1994 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1994_arr_6 = filter id1994 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1994_arr_7 = filter id1994 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1994_arr_8 = filter id1994 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1994_arr_9 = filter id1994 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1994_arr_10 = filter id1994 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1994_arr_11 = filter id1994 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1994_arr_12 = filter id1994 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1994_arr_13 = filter id1994 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1994_arr_14 = filter id1994 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1994_arr_15 = filter id1994 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1994_arr_16 = filter id1994 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1994_arr_17 = filter id1994 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1994_arr_18 = filter id1994 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1994_arr_19 = filter id1994 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1994_arr_20 = filter id1994 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1994_arr_21 = filter id1994 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1994_arr_22 = filter id1994 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1994_arr_23 = filter id1994 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1994_0 = group id1994_arr_0 all;
group_arr_1994_1 = group id1994_arr_1 all;
group_arr_1994_2 = group id1994_arr_2 all;
group_arr_1994_3 = group id1994_arr_3 all;
group_arr_1994_4 = group id1994_arr_4 all;
group_arr_1994_5 = group id1994_arr_5 all;
group_arr_1994_6 = group id1994_arr_6 all;
group_arr_1994_7 = group id1994_arr_7 all;
group_arr_1994_8 = group id1994_arr_8 all;
group_arr_1994_9 = group id1994_arr_9 all;
group_arr_1994_10 = group id1994_arr_10 all;
group_arr_1994_11 = group id1994_arr_11 all;
group_arr_1994_12 = group id1994_arr_12 all;
group_arr_1994_13 = group id1994_arr_13 all;
group_arr_1994_14 = group id1994_arr_14 all;
group_arr_1994_15 = group id1994_arr_15 all;
group_arr_1994_16 = group id1994_arr_16 all;
group_arr_1994_17 = group id1994_arr_17 all;
group_arr_1994_18 = group id1994_arr_18 all;
group_arr_1994_19 = group id1994_arr_19 all;
group_arr_1994_20 = group id1994_arr_20 all;
group_arr_1994_21 = group id1994_arr_21 all;
group_arr_1994_22 = group id1994_arr_22 all;
group_arr_1994_23 = group id1994_arr_23 all;
Delay_arr_1994_0 = foreach group_arr_1994_0 generate (AVG(id1994_arr_0.ArrDelay));
Delay_arr_1994_1 = foreach group_arr_1994_1 generate (AVG(id1994_arr_1.ArrDelay));
Delay_arr_1994_2 = foreach group_arr_1994_2 generate (AVG(id1994_arr_2.ArrDelay));
Delay_arr_1994_3 = foreach group_arr_1994_3 generate (AVG(id1994_arr_3.ArrDelay));
Delay_arr_1994_4 = foreach group_arr_1994_4 generate (AVG(id1994_arr_4.ArrDelay));
Delay_arr_1994_5 = foreach group_arr_1994_5 generate (AVG(id1994_arr_5.ArrDelay));
Delay_arr_1994_6 = foreach group_arr_1994_6 generate (AVG(id1994_arr_6.ArrDelay));
Delay_arr_1994_7 = foreach group_arr_1994_7 generate (AVG(id1994_arr_7.ArrDelay));
Delay_arr_1994_8 = foreach group_arr_1994_8 generate (AVG(id1994_arr_8.ArrDelay));
Delay_arr_1994_9 = foreach group_arr_1994_9 generate (AVG(id1994_arr_9.ArrDelay));
Delay_arr_1994_10 = foreach group_arr_1994_10 generate (AVG(id1994_arr_10.ArrDelay));
Delay_arr_1994_11 = foreach group_arr_1994_11 generate (AVG(id1994_arr_11.ArrDelay));
Delay_arr_1994_12 = foreach group_arr_1994_12 generate (AVG(id1994_arr_12.ArrDelay));
Delay_arr_1994_13 = foreach group_arr_1994_13 generate (AVG(id1994_arr_13.ArrDelay));
Delay_arr_1994_14 = foreach group_arr_1994_14 generate (AVG(id1994_arr_14.ArrDelay));
Delay_arr_1994_15 = foreach group_arr_1994_15 generate (AVG(id1994_arr_15.ArrDelay));
Delay_arr_1994_16 = foreach group_arr_1994_16 generate (AVG(id1994_arr_16.ArrDelay));
Delay_arr_1994_17 = foreach group_arr_1994_17 generate (AVG(id1994_arr_17.ArrDelay));
Delay_arr_1994_18 = foreach group_arr_1994_18 generate (AVG(id1994_arr_18.ArrDelay));
Delay_arr_1994_19 = foreach group_arr_1994_19 generate (AVG(id1994_arr_19.ArrDelay));
Delay_arr_1994_20 = foreach group_arr_1994_20 generate (AVG(id1994_arr_20.ArrDelay));
Delay_arr_1994_21 = foreach group_arr_1994_21 generate (AVG(id1994_arr_21.ArrDelay));
Delay_arr_1994_22 = foreach group_arr_1994_22 generate (AVG(id1994_arr_22.ArrDelay));
Delay_arr_1994_23 = foreach group_arr_1994_23 generate (AVG(id1994_arr_23.ArrDelay));
Union1994 = UNION Delay_arr_1994_0,Delay_arr_1994_1,Delay_arr_1994_2,Delay_arr_1994_3,Delay_arr_1994_4,Delay_arr_1994_5,Delay_arr_1994_6,Delay_arr_1994_7,Delay_arr_1994_8,Delay_arr_1994_9,Delay_arr_1994_10,Delay_arr_1994_11,Delay_arr_1994_12,Delay_arr_1994_13,Delay_arr_1994_14,Delay_arr_1994_15,Delay_arr_1994_16,Delay_arr_1994_17,Delay_arr_1994_18,Delay_arr_1994_19,Delay_arr_1994_20,Delay_arr_1994_21,Delay_arr_1994_22,Delay_arr_1994_23;
STORE Union1994 INTO '/user/s31wcp55/q3/1994/arr' USING PigStorage (',');
id1994_dep_0 = filter id1994 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1994_dep_1 = filter id1994 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1994_dep_2 = filter id1994 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1994_dep_3 = filter id1994 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1994_dep_4 = filter id1994 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1994_dep_5 = filter id1994 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1994_dep_6 = filter id1994 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1994_dep_7 = filter id1994 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1994_dep_8 = filter id1994 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1994_dep_9 = filter id1994 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1994_dep_10 = filter id1994 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1994_dep_11 = filter id1994 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1994_dep_12 = filter id1994 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1994_dep_13 = filter id1994 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1994_dep_14 = filter id1994 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1994_dep_15 = filter id1994 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1994_dep_16 = filter id1994 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1994_dep_17 = filter id1994 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1994_dep_18 = filter id1994 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1994_dep_19 = filter id1994 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1994_dep_20 = filter id1994 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1994_dep_21 = filter id1994 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1994_dep_22 = filter id1994 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1994_dep_23 = filter id1994 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1994_0 = group id1994_dep_0 all;
group_dep_1994_1 = group id1994_dep_1 all;
group_dep_1994_2 = group id1994_dep_2 all;
group_dep_1994_3 = group id1994_dep_3 all;
group_dep_1994_4 = group id1994_dep_4 all;
group_dep_1994_5 = group id1994_dep_5 all;
group_dep_1994_6 = group id1994_dep_6 all;
group_dep_1994_7 = group id1994_dep_7 all;
group_dep_1994_8 = group id1994_dep_8 all;
group_dep_1994_9 = group id1994_dep_9 all;
group_dep_1994_10 = group id1994_dep_10 all;
group_dep_1994_11 = group id1994_dep_11 all;
group_dep_1994_12 = group id1994_dep_12 all;
group_dep_1994_13 = group id1994_dep_13 all;
group_dep_1994_14 = group id1994_dep_14 all;
group_dep_1994_15 = group id1994_dep_15 all;
group_dep_1994_16 = group id1994_dep_16 all;
group_dep_1994_17 = group id1994_dep_17 all;
group_dep_1994_18 = group id1994_dep_18 all;
group_dep_1994_19 = group id1994_dep_19 all;
group_dep_1994_20 = group id1994_dep_20 all;
group_dep_1994_21 = group id1994_dep_21 all;
group_dep_1994_22 = group id1994_dep_22 all;
group_dep_1994_23 = group id1994_dep_23 all;
Delay_dep_1994_0 = foreach group_dep_1994_0 generate (AVG(id1994_dep_0.DepDelay));
Delay_dep_1994_1 = foreach group_dep_1994_1 generate (AVG(id1994_dep_1.DepDelay));
Delay_dep_1994_2 = foreach group_dep_1994_2 generate (AVG(id1994_dep_2.DepDelay));
Delay_dep_1994_3 = foreach group_dep_1994_3 generate (AVG(id1994_dep_3.DepDelay));
Delay_dep_1994_4 = foreach group_dep_1994_4 generate (AVG(id1994_dep_4.DepDelay));
Delay_dep_1994_5 = foreach group_dep_1994_5 generate (AVG(id1994_dep_5.DepDelay));
Delay_dep_1994_6 = foreach group_dep_1994_6 generate (AVG(id1994_dep_6.DepDelay));
Delay_dep_1994_7 = foreach group_dep_1994_7 generate (AVG(id1994_dep_7.DepDelay));
Delay_dep_1994_8 = foreach group_dep_1994_8 generate (AVG(id1994_dep_8.DepDelay));
Delay_dep_1994_9 = foreach group_dep_1994_9 generate (AVG(id1994_dep_9.DepDelay));
Delay_dep_1994_10 = foreach group_dep_1994_10 generate (AVG(id1994_dep_10.DepDelay));
Delay_dep_1994_11 = foreach group_dep_1994_11 generate (AVG(id1994_dep_11.DepDelay));
Delay_dep_1994_12 = foreach group_dep_1994_12 generate (AVG(id1994_dep_12.DepDelay));
Delay_dep_1994_13 = foreach group_dep_1994_13 generate (AVG(id1994_dep_13.DepDelay));
Delay_dep_1994_14 = foreach group_dep_1994_14 generate (AVG(id1994_dep_14.DepDelay));
Delay_dep_1994_15 = foreach group_dep_1994_15 generate (AVG(id1994_dep_15.DepDelay));
Delay_dep_1994_16 = foreach group_dep_1994_16 generate (AVG(id1994_dep_16.DepDelay));
Delay_dep_1994_17 = foreach group_dep_1994_17 generate (AVG(id1994_dep_17.DepDelay));
Delay_dep_1994_18 = foreach group_dep_1994_18 generate (AVG(id1994_dep_18.DepDelay));
Delay_dep_1994_19 = foreach group_dep_1994_19 generate (AVG(id1994_dep_19.DepDelay));
Delay_dep_1994_20 = foreach group_dep_1994_20 generate (AVG(id1994_dep_20.DepDelay));
Delay_dep_1994_21 = foreach group_dep_1994_21 generate (AVG(id1994_dep_21.DepDelay));
Delay_dep_1994_22 = foreach group_dep_1994_22 generate (AVG(id1994_dep_22.DepDelay));
Delay_dep_1994_23 = foreach group_dep_1994_23 generate (AVG(id1994_dep_23.DepDelay));
Union1994 = UNION Delay_dep_1994_0,Delay_dep_1994_1,Delay_dep_1994_2,Delay_dep_1994_3,Delay_dep_1994_4,Delay_dep_1994_5,Delay_dep_1994_6,Delay_dep_1994_7,Delay_dep_1994_8,Delay_dep_1994_9,Delay_dep_1994_10,Delay_dep_1994_11,Delay_dep_1994_12,Delay_dep_1994_13,Delay_dep_1994_14,Delay_dep_1994_15,Delay_dep_1994_16,Delay_dep_1994_17,Delay_dep_1994_18,Delay_dep_1994_19,Delay_dep_1994_20,Delay_dep_1994_21,Delay_dep_1994_22,Delay_dep_1994_23;
STORE Union1994 INTO '/user/s31wcp55/q3/1994/dep' USING PigStorage (',');


id1995 = LOAD 'airflight/1995.csv' USING PigStorage(',') AS (
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
id1995_arr_0 = filter id1995 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1995_arr_1 = filter id1995 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1995_arr_2 = filter id1995 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1995_arr_3 = filter id1995 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1995_arr_4 = filter id1995 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1995_arr_5 = filter id1995 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1995_arr_6 = filter id1995 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1995_arr_7 = filter id1995 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1995_arr_8 = filter id1995 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1995_arr_9 = filter id1995 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1995_arr_10 = filter id1995 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1995_arr_11 = filter id1995 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1995_arr_12 = filter id1995 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1995_arr_13 = filter id1995 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1995_arr_14 = filter id1995 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1995_arr_15 = filter id1995 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1995_arr_16 = filter id1995 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1995_arr_17 = filter id1995 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1995_arr_18 = filter id1995 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1995_arr_19 = filter id1995 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1995_arr_20 = filter id1995 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1995_arr_21 = filter id1995 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1995_arr_22 = filter id1995 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1995_arr_23 = filter id1995 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1995_0 = group id1995_arr_0 all;
group_arr_1995_1 = group id1995_arr_1 all;
group_arr_1995_2 = group id1995_arr_2 all;
group_arr_1995_3 = group id1995_arr_3 all;
group_arr_1995_4 = group id1995_arr_4 all;
group_arr_1995_5 = group id1995_arr_5 all;
group_arr_1995_6 = group id1995_arr_6 all;
group_arr_1995_7 = group id1995_arr_7 all;
group_arr_1995_8 = group id1995_arr_8 all;
group_arr_1995_9 = group id1995_arr_9 all;
group_arr_1995_10 = group id1995_arr_10 all;
group_arr_1995_11 = group id1995_arr_11 all;
group_arr_1995_12 = group id1995_arr_12 all;
group_arr_1995_13 = group id1995_arr_13 all;
group_arr_1995_14 = group id1995_arr_14 all;
group_arr_1995_15 = group id1995_arr_15 all;
group_arr_1995_16 = group id1995_arr_16 all;
group_arr_1995_17 = group id1995_arr_17 all;
group_arr_1995_18 = group id1995_arr_18 all;
group_arr_1995_19 = group id1995_arr_19 all;
group_arr_1995_20 = group id1995_arr_20 all;
group_arr_1995_21 = group id1995_arr_21 all;
group_arr_1995_22 = group id1995_arr_22 all;
group_arr_1995_23 = group id1995_arr_23 all;
Delay_arr_1995_0 = foreach group_arr_1995_0 generate (AVG(id1995_arr_0.ArrDelay));
Delay_arr_1995_1 = foreach group_arr_1995_1 generate (AVG(id1995_arr_1.ArrDelay));
Delay_arr_1995_2 = foreach group_arr_1995_2 generate (AVG(id1995_arr_2.ArrDelay));
Delay_arr_1995_3 = foreach group_arr_1995_3 generate (AVG(id1995_arr_3.ArrDelay));
Delay_arr_1995_4 = foreach group_arr_1995_4 generate (AVG(id1995_arr_4.ArrDelay));
Delay_arr_1995_5 = foreach group_arr_1995_5 generate (AVG(id1995_arr_5.ArrDelay));
Delay_arr_1995_6 = foreach group_arr_1995_6 generate (AVG(id1995_arr_6.ArrDelay));
Delay_arr_1995_7 = foreach group_arr_1995_7 generate (AVG(id1995_arr_7.ArrDelay));
Delay_arr_1995_8 = foreach group_arr_1995_8 generate (AVG(id1995_arr_8.ArrDelay));
Delay_arr_1995_9 = foreach group_arr_1995_9 generate (AVG(id1995_arr_9.ArrDelay));
Delay_arr_1995_10 = foreach group_arr_1995_10 generate (AVG(id1995_arr_10.ArrDelay));
Delay_arr_1995_11 = foreach group_arr_1995_11 generate (AVG(id1995_arr_11.ArrDelay));
Delay_arr_1995_12 = foreach group_arr_1995_12 generate (AVG(id1995_arr_12.ArrDelay));
Delay_arr_1995_13 = foreach group_arr_1995_13 generate (AVG(id1995_arr_13.ArrDelay));
Delay_arr_1995_14 = foreach group_arr_1995_14 generate (AVG(id1995_arr_14.ArrDelay));
Delay_arr_1995_15 = foreach group_arr_1995_15 generate (AVG(id1995_arr_15.ArrDelay));
Delay_arr_1995_16 = foreach group_arr_1995_16 generate (AVG(id1995_arr_16.ArrDelay));
Delay_arr_1995_17 = foreach group_arr_1995_17 generate (AVG(id1995_arr_17.ArrDelay));
Delay_arr_1995_18 = foreach group_arr_1995_18 generate (AVG(id1995_arr_18.ArrDelay));
Delay_arr_1995_19 = foreach group_arr_1995_19 generate (AVG(id1995_arr_19.ArrDelay));
Delay_arr_1995_20 = foreach group_arr_1995_20 generate (AVG(id1995_arr_20.ArrDelay));
Delay_arr_1995_21 = foreach group_arr_1995_21 generate (AVG(id1995_arr_21.ArrDelay));
Delay_arr_1995_22 = foreach group_arr_1995_22 generate (AVG(id1995_arr_22.ArrDelay));
Delay_arr_1995_23 = foreach group_arr_1995_23 generate (AVG(id1995_arr_23.ArrDelay));
Union1995 = UNION Delay_arr_1995_0,Delay_arr_1995_1,Delay_arr_1995_2,Delay_arr_1995_3,Delay_arr_1995_4,Delay_arr_1995_5,Delay_arr_1995_6,Delay_arr_1995_7,Delay_arr_1995_8,Delay_arr_1995_9,Delay_arr_1995_10,Delay_arr_1995_11,Delay_arr_1995_12,Delay_arr_1995_13,Delay_arr_1995_14,Delay_arr_1995_15,Delay_arr_1995_16,Delay_arr_1995_17,Delay_arr_1995_18,Delay_arr_1995_19,Delay_arr_1995_20,Delay_arr_1995_21,Delay_arr_1995_22,Delay_arr_1995_23;
STORE Union1995 INTO '/user/s31wcp55/q3/1995/arr' USING PigStorage (',');
id1995_dep_0 = filter id1995 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1995_dep_1 = filter id1995 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1995_dep_2 = filter id1995 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1995_dep_3 = filter id1995 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1995_dep_4 = filter id1995 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1995_dep_5 = filter id1995 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1995_dep_6 = filter id1995 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1995_dep_7 = filter id1995 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1995_dep_8 = filter id1995 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1995_dep_9 = filter id1995 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1995_dep_10 = filter id1995 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1995_dep_11 = filter id1995 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1995_dep_12 = filter id1995 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1995_dep_13 = filter id1995 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1995_dep_14 = filter id1995 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1995_dep_15 = filter id1995 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1995_dep_16 = filter id1995 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1995_dep_17 = filter id1995 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1995_dep_18 = filter id1995 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1995_dep_19 = filter id1995 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1995_dep_20 = filter id1995 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1995_dep_21 = filter id1995 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1995_dep_22 = filter id1995 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1995_dep_23 = filter id1995 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1995_0 = group id1995_dep_0 all;
group_dep_1995_1 = group id1995_dep_1 all;
group_dep_1995_2 = group id1995_dep_2 all;
group_dep_1995_3 = group id1995_dep_3 all;
group_dep_1995_4 = group id1995_dep_4 all;
group_dep_1995_5 = group id1995_dep_5 all;
group_dep_1995_6 = group id1995_dep_6 all;
group_dep_1995_7 = group id1995_dep_7 all;
group_dep_1995_8 = group id1995_dep_8 all;
group_dep_1995_9 = group id1995_dep_9 all;
group_dep_1995_10 = group id1995_dep_10 all;
group_dep_1995_11 = group id1995_dep_11 all;
group_dep_1995_12 = group id1995_dep_12 all;
group_dep_1995_13 = group id1995_dep_13 all;
group_dep_1995_14 = group id1995_dep_14 all;
group_dep_1995_15 = group id1995_dep_15 all;
group_dep_1995_16 = group id1995_dep_16 all;
group_dep_1995_17 = group id1995_dep_17 all;
group_dep_1995_18 = group id1995_dep_18 all;
group_dep_1995_19 = group id1995_dep_19 all;
group_dep_1995_20 = group id1995_dep_20 all;
group_dep_1995_21 = group id1995_dep_21 all;
group_dep_1995_22 = group id1995_dep_22 all;
group_dep_1995_23 = group id1995_dep_23 all;
Delay_dep_1995_0 = foreach group_dep_1995_0 generate (AVG(id1995_dep_0.DepDelay));
Delay_dep_1995_1 = foreach group_dep_1995_1 generate (AVG(id1995_dep_1.DepDelay));
Delay_dep_1995_2 = foreach group_dep_1995_2 generate (AVG(id1995_dep_2.DepDelay));
Delay_dep_1995_3 = foreach group_dep_1995_3 generate (AVG(id1995_dep_3.DepDelay));
Delay_dep_1995_4 = foreach group_dep_1995_4 generate (AVG(id1995_dep_4.DepDelay));
Delay_dep_1995_5 = foreach group_dep_1995_5 generate (AVG(id1995_dep_5.DepDelay));
Delay_dep_1995_6 = foreach group_dep_1995_6 generate (AVG(id1995_dep_6.DepDelay));
Delay_dep_1995_7 = foreach group_dep_1995_7 generate (AVG(id1995_dep_7.DepDelay));
Delay_dep_1995_8 = foreach group_dep_1995_8 generate (AVG(id1995_dep_8.DepDelay));
Delay_dep_1995_9 = foreach group_dep_1995_9 generate (AVG(id1995_dep_9.DepDelay));
Delay_dep_1995_10 = foreach group_dep_1995_10 generate (AVG(id1995_dep_10.DepDelay));
Delay_dep_1995_11 = foreach group_dep_1995_11 generate (AVG(id1995_dep_11.DepDelay));
Delay_dep_1995_12 = foreach group_dep_1995_12 generate (AVG(id1995_dep_12.DepDelay));
Delay_dep_1995_13 = foreach group_dep_1995_13 generate (AVG(id1995_dep_13.DepDelay));
Delay_dep_1995_14 = foreach group_dep_1995_14 generate (AVG(id1995_dep_14.DepDelay));
Delay_dep_1995_15 = foreach group_dep_1995_15 generate (AVG(id1995_dep_15.DepDelay));
Delay_dep_1995_16 = foreach group_dep_1995_16 generate (AVG(id1995_dep_16.DepDelay));
Delay_dep_1995_17 = foreach group_dep_1995_17 generate (AVG(id1995_dep_17.DepDelay));
Delay_dep_1995_18 = foreach group_dep_1995_18 generate (AVG(id1995_dep_18.DepDelay));
Delay_dep_1995_19 = foreach group_dep_1995_19 generate (AVG(id1995_dep_19.DepDelay));
Delay_dep_1995_20 = foreach group_dep_1995_20 generate (AVG(id1995_dep_20.DepDelay));
Delay_dep_1995_21 = foreach group_dep_1995_21 generate (AVG(id1995_dep_21.DepDelay));
Delay_dep_1995_22 = foreach group_dep_1995_22 generate (AVG(id1995_dep_22.DepDelay));
Delay_dep_1995_23 = foreach group_dep_1995_23 generate (AVG(id1995_dep_23.DepDelay));
Union1995 = UNION Delay_dep_1995_0,Delay_dep_1995_1,Delay_dep_1995_2,Delay_dep_1995_3,Delay_dep_1995_4,Delay_dep_1995_5,Delay_dep_1995_6,Delay_dep_1995_7,Delay_dep_1995_8,Delay_dep_1995_9,Delay_dep_1995_10,Delay_dep_1995_11,Delay_dep_1995_12,Delay_dep_1995_13,Delay_dep_1995_14,Delay_dep_1995_15,Delay_dep_1995_16,Delay_dep_1995_17,Delay_dep_1995_18,Delay_dep_1995_19,Delay_dep_1995_20,Delay_dep_1995_21,Delay_dep_1995_22,Delay_dep_1995_23;
STORE Union1995 INTO '/user/s31wcp55/q3/1995/dep' USING PigStorage (',');


id1996 = LOAD 'airflight/1996.csv' USING PigStorage(',') AS (
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
id1996_arr_0 = filter id1996 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1996_arr_1 = filter id1996 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1996_arr_2 = filter id1996 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1996_arr_3 = filter id1996 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1996_arr_4 = filter id1996 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1996_arr_5 = filter id1996 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1996_arr_6 = filter id1996 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1996_arr_7 = filter id1996 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1996_arr_8 = filter id1996 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1996_arr_9 = filter id1996 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1996_arr_10 = filter id1996 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1996_arr_11 = filter id1996 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1996_arr_12 = filter id1996 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1996_arr_13 = filter id1996 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1996_arr_14 = filter id1996 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1996_arr_15 = filter id1996 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1996_arr_16 = filter id1996 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1996_arr_17 = filter id1996 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1996_arr_18 = filter id1996 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1996_arr_19 = filter id1996 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1996_arr_20 = filter id1996 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1996_arr_21 = filter id1996 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1996_arr_22 = filter id1996 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1996_arr_23 = filter id1996 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1996_0 = group id1996_arr_0 all;
group_arr_1996_1 = group id1996_arr_1 all;
group_arr_1996_2 = group id1996_arr_2 all;
group_arr_1996_3 = group id1996_arr_3 all;
group_arr_1996_4 = group id1996_arr_4 all;
group_arr_1996_5 = group id1996_arr_5 all;
group_arr_1996_6 = group id1996_arr_6 all;
group_arr_1996_7 = group id1996_arr_7 all;
group_arr_1996_8 = group id1996_arr_8 all;
group_arr_1996_9 = group id1996_arr_9 all;
group_arr_1996_10 = group id1996_arr_10 all;
group_arr_1996_11 = group id1996_arr_11 all;
group_arr_1996_12 = group id1996_arr_12 all;
group_arr_1996_13 = group id1996_arr_13 all;
group_arr_1996_14 = group id1996_arr_14 all;
group_arr_1996_15 = group id1996_arr_15 all;
group_arr_1996_16 = group id1996_arr_16 all;
group_arr_1996_17 = group id1996_arr_17 all;
group_arr_1996_18 = group id1996_arr_18 all;
group_arr_1996_19 = group id1996_arr_19 all;
group_arr_1996_20 = group id1996_arr_20 all;
group_arr_1996_21 = group id1996_arr_21 all;
group_arr_1996_22 = group id1996_arr_22 all;
group_arr_1996_23 = group id1996_arr_23 all;
Delay_arr_1996_0 = foreach group_arr_1996_0 generate (AVG(id1996_arr_0.ArrDelay));
Delay_arr_1996_1 = foreach group_arr_1996_1 generate (AVG(id1996_arr_1.ArrDelay));
Delay_arr_1996_2 = foreach group_arr_1996_2 generate (AVG(id1996_arr_2.ArrDelay));
Delay_arr_1996_3 = foreach group_arr_1996_3 generate (AVG(id1996_arr_3.ArrDelay));
Delay_arr_1996_4 = foreach group_arr_1996_4 generate (AVG(id1996_arr_4.ArrDelay));
Delay_arr_1996_5 = foreach group_arr_1996_5 generate (AVG(id1996_arr_5.ArrDelay));
Delay_arr_1996_6 = foreach group_arr_1996_6 generate (AVG(id1996_arr_6.ArrDelay));
Delay_arr_1996_7 = foreach group_arr_1996_7 generate (AVG(id1996_arr_7.ArrDelay));
Delay_arr_1996_8 = foreach group_arr_1996_8 generate (AVG(id1996_arr_8.ArrDelay));
Delay_arr_1996_9 = foreach group_arr_1996_9 generate (AVG(id1996_arr_9.ArrDelay));
Delay_arr_1996_10 = foreach group_arr_1996_10 generate (AVG(id1996_arr_10.ArrDelay));
Delay_arr_1996_11 = foreach group_arr_1996_11 generate (AVG(id1996_arr_11.ArrDelay));
Delay_arr_1996_12 = foreach group_arr_1996_12 generate (AVG(id1996_arr_12.ArrDelay));
Delay_arr_1996_13 = foreach group_arr_1996_13 generate (AVG(id1996_arr_13.ArrDelay));
Delay_arr_1996_14 = foreach group_arr_1996_14 generate (AVG(id1996_arr_14.ArrDelay));
Delay_arr_1996_15 = foreach group_arr_1996_15 generate (AVG(id1996_arr_15.ArrDelay));
Delay_arr_1996_16 = foreach group_arr_1996_16 generate (AVG(id1996_arr_16.ArrDelay));
Delay_arr_1996_17 = foreach group_arr_1996_17 generate (AVG(id1996_arr_17.ArrDelay));
Delay_arr_1996_18 = foreach group_arr_1996_18 generate (AVG(id1996_arr_18.ArrDelay));
Delay_arr_1996_19 = foreach group_arr_1996_19 generate (AVG(id1996_arr_19.ArrDelay));
Delay_arr_1996_20 = foreach group_arr_1996_20 generate (AVG(id1996_arr_20.ArrDelay));
Delay_arr_1996_21 = foreach group_arr_1996_21 generate (AVG(id1996_arr_21.ArrDelay));
Delay_arr_1996_22 = foreach group_arr_1996_22 generate (AVG(id1996_arr_22.ArrDelay));
Delay_arr_1996_23 = foreach group_arr_1996_23 generate (AVG(id1996_arr_23.ArrDelay));
Union1996 = UNION Delay_arr_1996_0,Delay_arr_1996_1,Delay_arr_1996_2,Delay_arr_1996_3,Delay_arr_1996_4,Delay_arr_1996_5,Delay_arr_1996_6,Delay_arr_1996_7,Delay_arr_1996_8,Delay_arr_1996_9,Delay_arr_1996_10,Delay_arr_1996_11,Delay_arr_1996_12,Delay_arr_1996_13,Delay_arr_1996_14,Delay_arr_1996_15,Delay_arr_1996_16,Delay_arr_1996_17,Delay_arr_1996_18,Delay_arr_1996_19,Delay_arr_1996_20,Delay_arr_1996_21,Delay_arr_1996_22,Delay_arr_1996_23;
STORE Union1996 INTO '/user/s31wcp55/q3/1996/arr' USING PigStorage (',');
id1996_dep_0 = filter id1996 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1996_dep_1 = filter id1996 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1996_dep_2 = filter id1996 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1996_dep_3 = filter id1996 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1996_dep_4 = filter id1996 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1996_dep_5 = filter id1996 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1996_dep_6 = filter id1996 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1996_dep_7 = filter id1996 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1996_dep_8 = filter id1996 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1996_dep_9 = filter id1996 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1996_dep_10 = filter id1996 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1996_dep_11 = filter id1996 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1996_dep_12 = filter id1996 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1996_dep_13 = filter id1996 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1996_dep_14 = filter id1996 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1996_dep_15 = filter id1996 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1996_dep_16 = filter id1996 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1996_dep_17 = filter id1996 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1996_dep_18 = filter id1996 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1996_dep_19 = filter id1996 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1996_dep_20 = filter id1996 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1996_dep_21 = filter id1996 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1996_dep_22 = filter id1996 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1996_dep_23 = filter id1996 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1996_0 = group id1996_dep_0 all;
group_dep_1996_1 = group id1996_dep_1 all;
group_dep_1996_2 = group id1996_dep_2 all;
group_dep_1996_3 = group id1996_dep_3 all;
group_dep_1996_4 = group id1996_dep_4 all;
group_dep_1996_5 = group id1996_dep_5 all;
group_dep_1996_6 = group id1996_dep_6 all;
group_dep_1996_7 = group id1996_dep_7 all;
group_dep_1996_8 = group id1996_dep_8 all;
group_dep_1996_9 = group id1996_dep_9 all;
group_dep_1996_10 = group id1996_dep_10 all;
group_dep_1996_11 = group id1996_dep_11 all;
group_dep_1996_12 = group id1996_dep_12 all;
group_dep_1996_13 = group id1996_dep_13 all;
group_dep_1996_14 = group id1996_dep_14 all;
group_dep_1996_15 = group id1996_dep_15 all;
group_dep_1996_16 = group id1996_dep_16 all;
group_dep_1996_17 = group id1996_dep_17 all;
group_dep_1996_18 = group id1996_dep_18 all;
group_dep_1996_19 = group id1996_dep_19 all;
group_dep_1996_20 = group id1996_dep_20 all;
group_dep_1996_21 = group id1996_dep_21 all;
group_dep_1996_22 = group id1996_dep_22 all;
group_dep_1996_23 = group id1996_dep_23 all;
Delay_dep_1996_0 = foreach group_dep_1996_0 generate (AVG(id1996_dep_0.DepDelay));
Delay_dep_1996_1 = foreach group_dep_1996_1 generate (AVG(id1996_dep_1.DepDelay));
Delay_dep_1996_2 = foreach group_dep_1996_2 generate (AVG(id1996_dep_2.DepDelay));
Delay_dep_1996_3 = foreach group_dep_1996_3 generate (AVG(id1996_dep_3.DepDelay));
Delay_dep_1996_4 = foreach group_dep_1996_4 generate (AVG(id1996_dep_4.DepDelay));
Delay_dep_1996_5 = foreach group_dep_1996_5 generate (AVG(id1996_dep_5.DepDelay));
Delay_dep_1996_6 = foreach group_dep_1996_6 generate (AVG(id1996_dep_6.DepDelay));
Delay_dep_1996_7 = foreach group_dep_1996_7 generate (AVG(id1996_dep_7.DepDelay));
Delay_dep_1996_8 = foreach group_dep_1996_8 generate (AVG(id1996_dep_8.DepDelay));
Delay_dep_1996_9 = foreach group_dep_1996_9 generate (AVG(id1996_dep_9.DepDelay));
Delay_dep_1996_10 = foreach group_dep_1996_10 generate (AVG(id1996_dep_10.DepDelay));
Delay_dep_1996_11 = foreach group_dep_1996_11 generate (AVG(id1996_dep_11.DepDelay));
Delay_dep_1996_12 = foreach group_dep_1996_12 generate (AVG(id1996_dep_12.DepDelay));
Delay_dep_1996_13 = foreach group_dep_1996_13 generate (AVG(id1996_dep_13.DepDelay));
Delay_dep_1996_14 = foreach group_dep_1996_14 generate (AVG(id1996_dep_14.DepDelay));
Delay_dep_1996_15 = foreach group_dep_1996_15 generate (AVG(id1996_dep_15.DepDelay));
Delay_dep_1996_16 = foreach group_dep_1996_16 generate (AVG(id1996_dep_16.DepDelay));
Delay_dep_1996_17 = foreach group_dep_1996_17 generate (AVG(id1996_dep_17.DepDelay));
Delay_dep_1996_18 = foreach group_dep_1996_18 generate (AVG(id1996_dep_18.DepDelay));
Delay_dep_1996_19 = foreach group_dep_1996_19 generate (AVG(id1996_dep_19.DepDelay));
Delay_dep_1996_20 = foreach group_dep_1996_20 generate (AVG(id1996_dep_20.DepDelay));
Delay_dep_1996_21 = foreach group_dep_1996_21 generate (AVG(id1996_dep_21.DepDelay));
Delay_dep_1996_22 = foreach group_dep_1996_22 generate (AVG(id1996_dep_22.DepDelay));
Delay_dep_1996_23 = foreach group_dep_1996_23 generate (AVG(id1996_dep_23.DepDelay));
Union1996 = UNION Delay_dep_1996_0,Delay_dep_1996_1,Delay_dep_1996_2,Delay_dep_1996_3,Delay_dep_1996_4,Delay_dep_1996_5,Delay_dep_1996_6,Delay_dep_1996_7,Delay_dep_1996_8,Delay_dep_1996_9,Delay_dep_1996_10,Delay_dep_1996_11,Delay_dep_1996_12,Delay_dep_1996_13,Delay_dep_1996_14,Delay_dep_1996_15,Delay_dep_1996_16,Delay_dep_1996_17,Delay_dep_1996_18,Delay_dep_1996_19,Delay_dep_1996_20,Delay_dep_1996_21,Delay_dep_1996_22,Delay_dep_1996_23;
STORE Union1996 INTO '/user/s31wcp55/q3/1996/dep' USING PigStorage (',');


id1997 = LOAD 'airflight/1997.csv' USING PigStorage(',') AS (
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
id1997_arr_0 = filter id1997 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1997_arr_1 = filter id1997 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1997_arr_2 = filter id1997 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1997_arr_3 = filter id1997 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1997_arr_4 = filter id1997 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1997_arr_5 = filter id1997 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1997_arr_6 = filter id1997 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1997_arr_7 = filter id1997 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1997_arr_8 = filter id1997 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1997_arr_9 = filter id1997 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1997_arr_10 = filter id1997 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1997_arr_11 = filter id1997 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1997_arr_12 = filter id1997 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1997_arr_13 = filter id1997 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1997_arr_14 = filter id1997 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1997_arr_15 = filter id1997 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1997_arr_16 = filter id1997 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1997_arr_17 = filter id1997 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1997_arr_18 = filter id1997 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1997_arr_19 = filter id1997 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1997_arr_20 = filter id1997 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1997_arr_21 = filter id1997 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1997_arr_22 = filter id1997 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1997_arr_23 = filter id1997 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1997_0 = group id1997_arr_0 all;
group_arr_1997_1 = group id1997_arr_1 all;
group_arr_1997_2 = group id1997_arr_2 all;
group_arr_1997_3 = group id1997_arr_3 all;
group_arr_1997_4 = group id1997_arr_4 all;
group_arr_1997_5 = group id1997_arr_5 all;
group_arr_1997_6 = group id1997_arr_6 all;
group_arr_1997_7 = group id1997_arr_7 all;
group_arr_1997_8 = group id1997_arr_8 all;
group_arr_1997_9 = group id1997_arr_9 all;
group_arr_1997_10 = group id1997_arr_10 all;
group_arr_1997_11 = group id1997_arr_11 all;
group_arr_1997_12 = group id1997_arr_12 all;
group_arr_1997_13 = group id1997_arr_13 all;
group_arr_1997_14 = group id1997_arr_14 all;
group_arr_1997_15 = group id1997_arr_15 all;
group_arr_1997_16 = group id1997_arr_16 all;
group_arr_1997_17 = group id1997_arr_17 all;
group_arr_1997_18 = group id1997_arr_18 all;
group_arr_1997_19 = group id1997_arr_19 all;
group_arr_1997_20 = group id1997_arr_20 all;
group_arr_1997_21 = group id1997_arr_21 all;
group_arr_1997_22 = group id1997_arr_22 all;
group_arr_1997_23 = group id1997_arr_23 all;
Delay_arr_1997_0 = foreach group_arr_1997_0 generate (AVG(id1997_arr_0.ArrDelay));
Delay_arr_1997_1 = foreach group_arr_1997_1 generate (AVG(id1997_arr_1.ArrDelay));
Delay_arr_1997_2 = foreach group_arr_1997_2 generate (AVG(id1997_arr_2.ArrDelay));
Delay_arr_1997_3 = foreach group_arr_1997_3 generate (AVG(id1997_arr_3.ArrDelay));
Delay_arr_1997_4 = foreach group_arr_1997_4 generate (AVG(id1997_arr_4.ArrDelay));
Delay_arr_1997_5 = foreach group_arr_1997_5 generate (AVG(id1997_arr_5.ArrDelay));
Delay_arr_1997_6 = foreach group_arr_1997_6 generate (AVG(id1997_arr_6.ArrDelay));
Delay_arr_1997_7 = foreach group_arr_1997_7 generate (AVG(id1997_arr_7.ArrDelay));
Delay_arr_1997_8 = foreach group_arr_1997_8 generate (AVG(id1997_arr_8.ArrDelay));
Delay_arr_1997_9 = foreach group_arr_1997_9 generate (AVG(id1997_arr_9.ArrDelay));
Delay_arr_1997_10 = foreach group_arr_1997_10 generate (AVG(id1997_arr_10.ArrDelay));
Delay_arr_1997_11 = foreach group_arr_1997_11 generate (AVG(id1997_arr_11.ArrDelay));
Delay_arr_1997_12 = foreach group_arr_1997_12 generate (AVG(id1997_arr_12.ArrDelay));
Delay_arr_1997_13 = foreach group_arr_1997_13 generate (AVG(id1997_arr_13.ArrDelay));
Delay_arr_1997_14 = foreach group_arr_1997_14 generate (AVG(id1997_arr_14.ArrDelay));
Delay_arr_1997_15 = foreach group_arr_1997_15 generate (AVG(id1997_arr_15.ArrDelay));
Delay_arr_1997_16 = foreach group_arr_1997_16 generate (AVG(id1997_arr_16.ArrDelay));
Delay_arr_1997_17 = foreach group_arr_1997_17 generate (AVG(id1997_arr_17.ArrDelay));
Delay_arr_1997_18 = foreach group_arr_1997_18 generate (AVG(id1997_arr_18.ArrDelay));
Delay_arr_1997_19 = foreach group_arr_1997_19 generate (AVG(id1997_arr_19.ArrDelay));
Delay_arr_1997_20 = foreach group_arr_1997_20 generate (AVG(id1997_arr_20.ArrDelay));
Delay_arr_1997_21 = foreach group_arr_1997_21 generate (AVG(id1997_arr_21.ArrDelay));
Delay_arr_1997_22 = foreach group_arr_1997_22 generate (AVG(id1997_arr_22.ArrDelay));
Delay_arr_1997_23 = foreach group_arr_1997_23 generate (AVG(id1997_arr_23.ArrDelay));
Union1997 = UNION Delay_arr_1997_0,Delay_arr_1997_1,Delay_arr_1997_2,Delay_arr_1997_3,Delay_arr_1997_4,Delay_arr_1997_5,Delay_arr_1997_6,Delay_arr_1997_7,Delay_arr_1997_8,Delay_arr_1997_9,Delay_arr_1997_10,Delay_arr_1997_11,Delay_arr_1997_12,Delay_arr_1997_13,Delay_arr_1997_14,Delay_arr_1997_15,Delay_arr_1997_16,Delay_arr_1997_17,Delay_arr_1997_18,Delay_arr_1997_19,Delay_arr_1997_20,Delay_arr_1997_21,Delay_arr_1997_22,Delay_arr_1997_23;
STORE Union1997 INTO '/user/s31wcp55/q3/1997/arr' USING PigStorage (',');
id1997_dep_0 = filter id1997 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1997_dep_1 = filter id1997 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1997_dep_2 = filter id1997 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1997_dep_3 = filter id1997 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1997_dep_4 = filter id1997 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1997_dep_5 = filter id1997 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1997_dep_6 = filter id1997 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1997_dep_7 = filter id1997 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1997_dep_8 = filter id1997 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1997_dep_9 = filter id1997 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1997_dep_10 = filter id1997 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1997_dep_11 = filter id1997 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1997_dep_12 = filter id1997 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1997_dep_13 = filter id1997 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1997_dep_14 = filter id1997 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1997_dep_15 = filter id1997 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1997_dep_16 = filter id1997 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1997_dep_17 = filter id1997 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1997_dep_18 = filter id1997 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1997_dep_19 = filter id1997 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1997_dep_20 = filter id1997 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1997_dep_21 = filter id1997 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1997_dep_22 = filter id1997 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1997_dep_23 = filter id1997 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1997_0 = group id1997_dep_0 all;
group_dep_1997_1 = group id1997_dep_1 all;
group_dep_1997_2 = group id1997_dep_2 all;
group_dep_1997_3 = group id1997_dep_3 all;
group_dep_1997_4 = group id1997_dep_4 all;
group_dep_1997_5 = group id1997_dep_5 all;
group_dep_1997_6 = group id1997_dep_6 all;
group_dep_1997_7 = group id1997_dep_7 all;
group_dep_1997_8 = group id1997_dep_8 all;
group_dep_1997_9 = group id1997_dep_9 all;
group_dep_1997_10 = group id1997_dep_10 all;
group_dep_1997_11 = group id1997_dep_11 all;
group_dep_1997_12 = group id1997_dep_12 all;
group_dep_1997_13 = group id1997_dep_13 all;
group_dep_1997_14 = group id1997_dep_14 all;
group_dep_1997_15 = group id1997_dep_15 all;
group_dep_1997_16 = group id1997_dep_16 all;
group_dep_1997_17 = group id1997_dep_17 all;
group_dep_1997_18 = group id1997_dep_18 all;
group_dep_1997_19 = group id1997_dep_19 all;
group_dep_1997_20 = group id1997_dep_20 all;
group_dep_1997_21 = group id1997_dep_21 all;
group_dep_1997_22 = group id1997_dep_22 all;
group_dep_1997_23 = group id1997_dep_23 all;
Delay_dep_1997_0 = foreach group_dep_1997_0 generate (AVG(id1997_dep_0.DepDelay));
Delay_dep_1997_1 = foreach group_dep_1997_1 generate (AVG(id1997_dep_1.DepDelay));
Delay_dep_1997_2 = foreach group_dep_1997_2 generate (AVG(id1997_dep_2.DepDelay));
Delay_dep_1997_3 = foreach group_dep_1997_3 generate (AVG(id1997_dep_3.DepDelay));
Delay_dep_1997_4 = foreach group_dep_1997_4 generate (AVG(id1997_dep_4.DepDelay));
Delay_dep_1997_5 = foreach group_dep_1997_5 generate (AVG(id1997_dep_5.DepDelay));
Delay_dep_1997_6 = foreach group_dep_1997_6 generate (AVG(id1997_dep_6.DepDelay));
Delay_dep_1997_7 = foreach group_dep_1997_7 generate (AVG(id1997_dep_7.DepDelay));
Delay_dep_1997_8 = foreach group_dep_1997_8 generate (AVG(id1997_dep_8.DepDelay));
Delay_dep_1997_9 = foreach group_dep_1997_9 generate (AVG(id1997_dep_9.DepDelay));
Delay_dep_1997_10 = foreach group_dep_1997_10 generate (AVG(id1997_dep_10.DepDelay));
Delay_dep_1997_11 = foreach group_dep_1997_11 generate (AVG(id1997_dep_11.DepDelay));
Delay_dep_1997_12 = foreach group_dep_1997_12 generate (AVG(id1997_dep_12.DepDelay));
Delay_dep_1997_13 = foreach group_dep_1997_13 generate (AVG(id1997_dep_13.DepDelay));
Delay_dep_1997_14 = foreach group_dep_1997_14 generate (AVG(id1997_dep_14.DepDelay));
Delay_dep_1997_15 = foreach group_dep_1997_15 generate (AVG(id1997_dep_15.DepDelay));
Delay_dep_1997_16 = foreach group_dep_1997_16 generate (AVG(id1997_dep_16.DepDelay));
Delay_dep_1997_17 = foreach group_dep_1997_17 generate (AVG(id1997_dep_17.DepDelay));
Delay_dep_1997_18 = foreach group_dep_1997_18 generate (AVG(id1997_dep_18.DepDelay));
Delay_dep_1997_19 = foreach group_dep_1997_19 generate (AVG(id1997_dep_19.DepDelay));
Delay_dep_1997_20 = foreach group_dep_1997_20 generate (AVG(id1997_dep_20.DepDelay));
Delay_dep_1997_21 = foreach group_dep_1997_21 generate (AVG(id1997_dep_21.DepDelay));
Delay_dep_1997_22 = foreach group_dep_1997_22 generate (AVG(id1997_dep_22.DepDelay));
Delay_dep_1997_23 = foreach group_dep_1997_23 generate (AVG(id1997_dep_23.DepDelay));
Union1997 = UNION Delay_dep_1997_0,Delay_dep_1997_1,Delay_dep_1997_2,Delay_dep_1997_3,Delay_dep_1997_4,Delay_dep_1997_5,Delay_dep_1997_6,Delay_dep_1997_7,Delay_dep_1997_8,Delay_dep_1997_9,Delay_dep_1997_10,Delay_dep_1997_11,Delay_dep_1997_12,Delay_dep_1997_13,Delay_dep_1997_14,Delay_dep_1997_15,Delay_dep_1997_16,Delay_dep_1997_17,Delay_dep_1997_18,Delay_dep_1997_19,Delay_dep_1997_20,Delay_dep_1997_21,Delay_dep_1997_22,Delay_dep_1997_23;
STORE Union1997 INTO '/user/s31wcp55/q3/1997/dep' USING PigStorage (',');


id1998 = LOAD 'airflight/1998.csv' USING PigStorage(',') AS (
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
id1998_arr_0 = filter id1998 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1998_arr_1 = filter id1998 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1998_arr_2 = filter id1998 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1998_arr_3 = filter id1998 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1998_arr_4 = filter id1998 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1998_arr_5 = filter id1998 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1998_arr_6 = filter id1998 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1998_arr_7 = filter id1998 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1998_arr_8 = filter id1998 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1998_arr_9 = filter id1998 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1998_arr_10 = filter id1998 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1998_arr_11 = filter id1998 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1998_arr_12 = filter id1998 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1998_arr_13 = filter id1998 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1998_arr_14 = filter id1998 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1998_arr_15 = filter id1998 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1998_arr_16 = filter id1998 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1998_arr_17 = filter id1998 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1998_arr_18 = filter id1998 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1998_arr_19 = filter id1998 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1998_arr_20 = filter id1998 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1998_arr_21 = filter id1998 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1998_arr_22 = filter id1998 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1998_arr_23 = filter id1998 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1998_0 = group id1998_arr_0 all;
group_arr_1998_1 = group id1998_arr_1 all;
group_arr_1998_2 = group id1998_arr_2 all;
group_arr_1998_3 = group id1998_arr_3 all;
group_arr_1998_4 = group id1998_arr_4 all;
group_arr_1998_5 = group id1998_arr_5 all;
group_arr_1998_6 = group id1998_arr_6 all;
group_arr_1998_7 = group id1998_arr_7 all;
group_arr_1998_8 = group id1998_arr_8 all;
group_arr_1998_9 = group id1998_arr_9 all;
group_arr_1998_10 = group id1998_arr_10 all;
group_arr_1998_11 = group id1998_arr_11 all;
group_arr_1998_12 = group id1998_arr_12 all;
group_arr_1998_13 = group id1998_arr_13 all;
group_arr_1998_14 = group id1998_arr_14 all;
group_arr_1998_15 = group id1998_arr_15 all;
group_arr_1998_16 = group id1998_arr_16 all;
group_arr_1998_17 = group id1998_arr_17 all;
group_arr_1998_18 = group id1998_arr_18 all;
group_arr_1998_19 = group id1998_arr_19 all;
group_arr_1998_20 = group id1998_arr_20 all;
group_arr_1998_21 = group id1998_arr_21 all;
group_arr_1998_22 = group id1998_arr_22 all;
group_arr_1998_23 = group id1998_arr_23 all;
Delay_arr_1998_0 = foreach group_arr_1998_0 generate (AVG(id1998_arr_0.ArrDelay));
Delay_arr_1998_1 = foreach group_arr_1998_1 generate (AVG(id1998_arr_1.ArrDelay));
Delay_arr_1998_2 = foreach group_arr_1998_2 generate (AVG(id1998_arr_2.ArrDelay));
Delay_arr_1998_3 = foreach group_arr_1998_3 generate (AVG(id1998_arr_3.ArrDelay));
Delay_arr_1998_4 = foreach group_arr_1998_4 generate (AVG(id1998_arr_4.ArrDelay));
Delay_arr_1998_5 = foreach group_arr_1998_5 generate (AVG(id1998_arr_5.ArrDelay));
Delay_arr_1998_6 = foreach group_arr_1998_6 generate (AVG(id1998_arr_6.ArrDelay));
Delay_arr_1998_7 = foreach group_arr_1998_7 generate (AVG(id1998_arr_7.ArrDelay));
Delay_arr_1998_8 = foreach group_arr_1998_8 generate (AVG(id1998_arr_8.ArrDelay));
Delay_arr_1998_9 = foreach group_arr_1998_9 generate (AVG(id1998_arr_9.ArrDelay));
Delay_arr_1998_10 = foreach group_arr_1998_10 generate (AVG(id1998_arr_10.ArrDelay));
Delay_arr_1998_11 = foreach group_arr_1998_11 generate (AVG(id1998_arr_11.ArrDelay));
Delay_arr_1998_12 = foreach group_arr_1998_12 generate (AVG(id1998_arr_12.ArrDelay));
Delay_arr_1998_13 = foreach group_arr_1998_13 generate (AVG(id1998_arr_13.ArrDelay));
Delay_arr_1998_14 = foreach group_arr_1998_14 generate (AVG(id1998_arr_14.ArrDelay));
Delay_arr_1998_15 = foreach group_arr_1998_15 generate (AVG(id1998_arr_15.ArrDelay));
Delay_arr_1998_16 = foreach group_arr_1998_16 generate (AVG(id1998_arr_16.ArrDelay));
Delay_arr_1998_17 = foreach group_arr_1998_17 generate (AVG(id1998_arr_17.ArrDelay));
Delay_arr_1998_18 = foreach group_arr_1998_18 generate (AVG(id1998_arr_18.ArrDelay));
Delay_arr_1998_19 = foreach group_arr_1998_19 generate (AVG(id1998_arr_19.ArrDelay));
Delay_arr_1998_20 = foreach group_arr_1998_20 generate (AVG(id1998_arr_20.ArrDelay));
Delay_arr_1998_21 = foreach group_arr_1998_21 generate (AVG(id1998_arr_21.ArrDelay));
Delay_arr_1998_22 = foreach group_arr_1998_22 generate (AVG(id1998_arr_22.ArrDelay));
Delay_arr_1998_23 = foreach group_arr_1998_23 generate (AVG(id1998_arr_23.ArrDelay));
Union1998 = UNION Delay_arr_1998_0,Delay_arr_1998_1,Delay_arr_1998_2,Delay_arr_1998_3,Delay_arr_1998_4,Delay_arr_1998_5,Delay_arr_1998_6,Delay_arr_1998_7,Delay_arr_1998_8,Delay_arr_1998_9,Delay_arr_1998_10,Delay_arr_1998_11,Delay_arr_1998_12,Delay_arr_1998_13,Delay_arr_1998_14,Delay_arr_1998_15,Delay_arr_1998_16,Delay_arr_1998_17,Delay_arr_1998_18,Delay_arr_1998_19,Delay_arr_1998_20,Delay_arr_1998_21,Delay_arr_1998_22,Delay_arr_1998_23;
STORE Union1998 INTO '/user/s31wcp55/q3/1998/arr' USING PigStorage (',');
id1998_dep_0 = filter id1998 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1998_dep_1 = filter id1998 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1998_dep_2 = filter id1998 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1998_dep_3 = filter id1998 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1998_dep_4 = filter id1998 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1998_dep_5 = filter id1998 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1998_dep_6 = filter id1998 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1998_dep_7 = filter id1998 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1998_dep_8 = filter id1998 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1998_dep_9 = filter id1998 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1998_dep_10 = filter id1998 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1998_dep_11 = filter id1998 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1998_dep_12 = filter id1998 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1998_dep_13 = filter id1998 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1998_dep_14 = filter id1998 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1998_dep_15 = filter id1998 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1998_dep_16 = filter id1998 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1998_dep_17 = filter id1998 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1998_dep_18 = filter id1998 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1998_dep_19 = filter id1998 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1998_dep_20 = filter id1998 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1998_dep_21 = filter id1998 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1998_dep_22 = filter id1998 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1998_dep_23 = filter id1998 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1998_0 = group id1998_dep_0 all;
group_dep_1998_1 = group id1998_dep_1 all;
group_dep_1998_2 = group id1998_dep_2 all;
group_dep_1998_3 = group id1998_dep_3 all;
group_dep_1998_4 = group id1998_dep_4 all;
group_dep_1998_5 = group id1998_dep_5 all;
group_dep_1998_6 = group id1998_dep_6 all;
group_dep_1998_7 = group id1998_dep_7 all;
group_dep_1998_8 = group id1998_dep_8 all;
group_dep_1998_9 = group id1998_dep_9 all;
group_dep_1998_10 = group id1998_dep_10 all;
group_dep_1998_11 = group id1998_dep_11 all;
group_dep_1998_12 = group id1998_dep_12 all;
group_dep_1998_13 = group id1998_dep_13 all;
group_dep_1998_14 = group id1998_dep_14 all;
group_dep_1998_15 = group id1998_dep_15 all;
group_dep_1998_16 = group id1998_dep_16 all;
group_dep_1998_17 = group id1998_dep_17 all;
group_dep_1998_18 = group id1998_dep_18 all;
group_dep_1998_19 = group id1998_dep_19 all;
group_dep_1998_20 = group id1998_dep_20 all;
group_dep_1998_21 = group id1998_dep_21 all;
group_dep_1998_22 = group id1998_dep_22 all;
group_dep_1998_23 = group id1998_dep_23 all;
Delay_dep_1998_0 = foreach group_dep_1998_0 generate (AVG(id1998_dep_0.DepDelay));
Delay_dep_1998_1 = foreach group_dep_1998_1 generate (AVG(id1998_dep_1.DepDelay));
Delay_dep_1998_2 = foreach group_dep_1998_2 generate (AVG(id1998_dep_2.DepDelay));
Delay_dep_1998_3 = foreach group_dep_1998_3 generate (AVG(id1998_dep_3.DepDelay));
Delay_dep_1998_4 = foreach group_dep_1998_4 generate (AVG(id1998_dep_4.DepDelay));
Delay_dep_1998_5 = foreach group_dep_1998_5 generate (AVG(id1998_dep_5.DepDelay));
Delay_dep_1998_6 = foreach group_dep_1998_6 generate (AVG(id1998_dep_6.DepDelay));
Delay_dep_1998_7 = foreach group_dep_1998_7 generate (AVG(id1998_dep_7.DepDelay));
Delay_dep_1998_8 = foreach group_dep_1998_8 generate (AVG(id1998_dep_8.DepDelay));
Delay_dep_1998_9 = foreach group_dep_1998_9 generate (AVG(id1998_dep_9.DepDelay));
Delay_dep_1998_10 = foreach group_dep_1998_10 generate (AVG(id1998_dep_10.DepDelay));
Delay_dep_1998_11 = foreach group_dep_1998_11 generate (AVG(id1998_dep_11.DepDelay));
Delay_dep_1998_12 = foreach group_dep_1998_12 generate (AVG(id1998_dep_12.DepDelay));
Delay_dep_1998_13 = foreach group_dep_1998_13 generate (AVG(id1998_dep_13.DepDelay));
Delay_dep_1998_14 = foreach group_dep_1998_14 generate (AVG(id1998_dep_14.DepDelay));
Delay_dep_1998_15 = foreach group_dep_1998_15 generate (AVG(id1998_dep_15.DepDelay));
Delay_dep_1998_16 = foreach group_dep_1998_16 generate (AVG(id1998_dep_16.DepDelay));
Delay_dep_1998_17 = foreach group_dep_1998_17 generate (AVG(id1998_dep_17.DepDelay));
Delay_dep_1998_18 = foreach group_dep_1998_18 generate (AVG(id1998_dep_18.DepDelay));
Delay_dep_1998_19 = foreach group_dep_1998_19 generate (AVG(id1998_dep_19.DepDelay));
Delay_dep_1998_20 = foreach group_dep_1998_20 generate (AVG(id1998_dep_20.DepDelay));
Delay_dep_1998_21 = foreach group_dep_1998_21 generate (AVG(id1998_dep_21.DepDelay));
Delay_dep_1998_22 = foreach group_dep_1998_22 generate (AVG(id1998_dep_22.DepDelay));
Delay_dep_1998_23 = foreach group_dep_1998_23 generate (AVG(id1998_dep_23.DepDelay));
Union1998 = UNION Delay_dep_1998_0,Delay_dep_1998_1,Delay_dep_1998_2,Delay_dep_1998_3,Delay_dep_1998_4,Delay_dep_1998_5,Delay_dep_1998_6,Delay_dep_1998_7,Delay_dep_1998_8,Delay_dep_1998_9,Delay_dep_1998_10,Delay_dep_1998_11,Delay_dep_1998_12,Delay_dep_1998_13,Delay_dep_1998_14,Delay_dep_1998_15,Delay_dep_1998_16,Delay_dep_1998_17,Delay_dep_1998_18,Delay_dep_1998_19,Delay_dep_1998_20,Delay_dep_1998_21,Delay_dep_1998_22,Delay_dep_1998_23;
STORE Union1998 INTO '/user/s31wcp55/q3/1998/dep' USING PigStorage (',');


id1999 = LOAD 'airflight/1999.csv' USING PigStorage(',') AS (
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
id1999_arr_0 = filter id1999 by (CRSArrTime>=0) AND (CRSArrTime<100);
id1999_arr_1 = filter id1999 by (CRSArrTime>=100) AND (CRSArrTime<200);
id1999_arr_2 = filter id1999 by (CRSArrTime>=200) AND (CRSArrTime<300);
id1999_arr_3 = filter id1999 by (CRSArrTime>=300) AND (CRSArrTime<400);
id1999_arr_4 = filter id1999 by (CRSArrTime>=400) AND (CRSArrTime<500);
id1999_arr_5 = filter id1999 by (CRSArrTime>=500) AND (CRSArrTime<600);
id1999_arr_6 = filter id1999 by (CRSArrTime>=600) AND (CRSArrTime<700);
id1999_arr_7 = filter id1999 by (CRSArrTime>=700) AND (CRSArrTime<800);
id1999_arr_8 = filter id1999 by (CRSArrTime>=800) AND (CRSArrTime<900);
id1999_arr_9 = filter id1999 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id1999_arr_10 = filter id1999 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id1999_arr_11 = filter id1999 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id1999_arr_12 = filter id1999 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id1999_arr_13 = filter id1999 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id1999_arr_14 = filter id1999 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id1999_arr_15 = filter id1999 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id1999_arr_16 = filter id1999 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id1999_arr_17 = filter id1999 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id1999_arr_18 = filter id1999 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id1999_arr_19 = filter id1999 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id1999_arr_20 = filter id1999 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id1999_arr_21 = filter id1999 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id1999_arr_22 = filter id1999 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id1999_arr_23 = filter id1999 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_1999_0 = group id1999_arr_0 all;
group_arr_1999_1 = group id1999_arr_1 all;
group_arr_1999_2 = group id1999_arr_2 all;
group_arr_1999_3 = group id1999_arr_3 all;
group_arr_1999_4 = group id1999_arr_4 all;
group_arr_1999_5 = group id1999_arr_5 all;
group_arr_1999_6 = group id1999_arr_6 all;
group_arr_1999_7 = group id1999_arr_7 all;
group_arr_1999_8 = group id1999_arr_8 all;
group_arr_1999_9 = group id1999_arr_9 all;
group_arr_1999_10 = group id1999_arr_10 all;
group_arr_1999_11 = group id1999_arr_11 all;
group_arr_1999_12 = group id1999_arr_12 all;
group_arr_1999_13 = group id1999_arr_13 all;
group_arr_1999_14 = group id1999_arr_14 all;
group_arr_1999_15 = group id1999_arr_15 all;
group_arr_1999_16 = group id1999_arr_16 all;
group_arr_1999_17 = group id1999_arr_17 all;
group_arr_1999_18 = group id1999_arr_18 all;
group_arr_1999_19 = group id1999_arr_19 all;
group_arr_1999_20 = group id1999_arr_20 all;
group_arr_1999_21 = group id1999_arr_21 all;
group_arr_1999_22 = group id1999_arr_22 all;
group_arr_1999_23 = group id1999_arr_23 all;
Delay_arr_1999_0 = foreach group_arr_1999_0 generate (AVG(id1999_arr_0.ArrDelay));
Delay_arr_1999_1 = foreach group_arr_1999_1 generate (AVG(id1999_arr_1.ArrDelay));
Delay_arr_1999_2 = foreach group_arr_1999_2 generate (AVG(id1999_arr_2.ArrDelay));
Delay_arr_1999_3 = foreach group_arr_1999_3 generate (AVG(id1999_arr_3.ArrDelay));
Delay_arr_1999_4 = foreach group_arr_1999_4 generate (AVG(id1999_arr_4.ArrDelay));
Delay_arr_1999_5 = foreach group_arr_1999_5 generate (AVG(id1999_arr_5.ArrDelay));
Delay_arr_1999_6 = foreach group_arr_1999_6 generate (AVG(id1999_arr_6.ArrDelay));
Delay_arr_1999_7 = foreach group_arr_1999_7 generate (AVG(id1999_arr_7.ArrDelay));
Delay_arr_1999_8 = foreach group_arr_1999_8 generate (AVG(id1999_arr_8.ArrDelay));
Delay_arr_1999_9 = foreach group_arr_1999_9 generate (AVG(id1999_arr_9.ArrDelay));
Delay_arr_1999_10 = foreach group_arr_1999_10 generate (AVG(id1999_arr_10.ArrDelay));
Delay_arr_1999_11 = foreach group_arr_1999_11 generate (AVG(id1999_arr_11.ArrDelay));
Delay_arr_1999_12 = foreach group_arr_1999_12 generate (AVG(id1999_arr_12.ArrDelay));
Delay_arr_1999_13 = foreach group_arr_1999_13 generate (AVG(id1999_arr_13.ArrDelay));
Delay_arr_1999_14 = foreach group_arr_1999_14 generate (AVG(id1999_arr_14.ArrDelay));
Delay_arr_1999_15 = foreach group_arr_1999_15 generate (AVG(id1999_arr_15.ArrDelay));
Delay_arr_1999_16 = foreach group_arr_1999_16 generate (AVG(id1999_arr_16.ArrDelay));
Delay_arr_1999_17 = foreach group_arr_1999_17 generate (AVG(id1999_arr_17.ArrDelay));
Delay_arr_1999_18 = foreach group_arr_1999_18 generate (AVG(id1999_arr_18.ArrDelay));
Delay_arr_1999_19 = foreach group_arr_1999_19 generate (AVG(id1999_arr_19.ArrDelay));
Delay_arr_1999_20 = foreach group_arr_1999_20 generate (AVG(id1999_arr_20.ArrDelay));
Delay_arr_1999_21 = foreach group_arr_1999_21 generate (AVG(id1999_arr_21.ArrDelay));
Delay_arr_1999_22 = foreach group_arr_1999_22 generate (AVG(id1999_arr_22.ArrDelay));
Delay_arr_1999_23 = foreach group_arr_1999_23 generate (AVG(id1999_arr_23.ArrDelay));
Union1999 = UNION Delay_arr_1999_0,Delay_arr_1999_1,Delay_arr_1999_2,Delay_arr_1999_3,Delay_arr_1999_4,Delay_arr_1999_5,Delay_arr_1999_6,Delay_arr_1999_7,Delay_arr_1999_8,Delay_arr_1999_9,Delay_arr_1999_10,Delay_arr_1999_11,Delay_arr_1999_12,Delay_arr_1999_13,Delay_arr_1999_14,Delay_arr_1999_15,Delay_arr_1999_16,Delay_arr_1999_17,Delay_arr_1999_18,Delay_arr_1999_19,Delay_arr_1999_20,Delay_arr_1999_21,Delay_arr_1999_22,Delay_arr_1999_23;
STORE Union1999 INTO '/user/s31wcp55/q3/1999/arr' USING PigStorage (',');
id1999_dep_0 = filter id1999 by (CRSDepTime>=0) AND (CRSDepTime<100);
id1999_dep_1 = filter id1999 by (CRSDepTime>=100) AND (CRSDepTime<200);
id1999_dep_2 = filter id1999 by (CRSDepTime>=200) AND (CRSDepTime<300);
id1999_dep_3 = filter id1999 by (CRSDepTime>=300) AND (CRSDepTime<400);
id1999_dep_4 = filter id1999 by (CRSDepTime>=400) AND (CRSDepTime<500);
id1999_dep_5 = filter id1999 by (CRSDepTime>=500) AND (CRSDepTime<600);
id1999_dep_6 = filter id1999 by (CRSDepTime>=600) AND (CRSDepTime<700);
id1999_dep_7 = filter id1999 by (CRSDepTime>=700) AND (CRSDepTime<800);
id1999_dep_8 = filter id1999 by (CRSDepTime>=800) AND (CRSDepTime<900);
id1999_dep_9 = filter id1999 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id1999_dep_10 = filter id1999 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id1999_dep_11 = filter id1999 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id1999_dep_12 = filter id1999 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id1999_dep_13 = filter id1999 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id1999_dep_14 = filter id1999 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id1999_dep_15 = filter id1999 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id1999_dep_16 = filter id1999 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id1999_dep_17 = filter id1999 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id1999_dep_18 = filter id1999 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id1999_dep_19 = filter id1999 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id1999_dep_20 = filter id1999 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id1999_dep_21 = filter id1999 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id1999_dep_22 = filter id1999 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id1999_dep_23 = filter id1999 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_1999_0 = group id1999_dep_0 all;
group_dep_1999_1 = group id1999_dep_1 all;
group_dep_1999_2 = group id1999_dep_2 all;
group_dep_1999_3 = group id1999_dep_3 all;
group_dep_1999_4 = group id1999_dep_4 all;
group_dep_1999_5 = group id1999_dep_5 all;
group_dep_1999_6 = group id1999_dep_6 all;
group_dep_1999_7 = group id1999_dep_7 all;
group_dep_1999_8 = group id1999_dep_8 all;
group_dep_1999_9 = group id1999_dep_9 all;
group_dep_1999_10 = group id1999_dep_10 all;
group_dep_1999_11 = group id1999_dep_11 all;
group_dep_1999_12 = group id1999_dep_12 all;
group_dep_1999_13 = group id1999_dep_13 all;
group_dep_1999_14 = group id1999_dep_14 all;
group_dep_1999_15 = group id1999_dep_15 all;
group_dep_1999_16 = group id1999_dep_16 all;
group_dep_1999_17 = group id1999_dep_17 all;
group_dep_1999_18 = group id1999_dep_18 all;
group_dep_1999_19 = group id1999_dep_19 all;
group_dep_1999_20 = group id1999_dep_20 all;
group_dep_1999_21 = group id1999_dep_21 all;
group_dep_1999_22 = group id1999_dep_22 all;
group_dep_1999_23 = group id1999_dep_23 all;
Delay_dep_1999_0 = foreach group_dep_1999_0 generate (AVG(id1999_dep_0.DepDelay));
Delay_dep_1999_1 = foreach group_dep_1999_1 generate (AVG(id1999_dep_1.DepDelay));
Delay_dep_1999_2 = foreach group_dep_1999_2 generate (AVG(id1999_dep_2.DepDelay));
Delay_dep_1999_3 = foreach group_dep_1999_3 generate (AVG(id1999_dep_3.DepDelay));
Delay_dep_1999_4 = foreach group_dep_1999_4 generate (AVG(id1999_dep_4.DepDelay));
Delay_dep_1999_5 = foreach group_dep_1999_5 generate (AVG(id1999_dep_5.DepDelay));
Delay_dep_1999_6 = foreach group_dep_1999_6 generate (AVG(id1999_dep_6.DepDelay));
Delay_dep_1999_7 = foreach group_dep_1999_7 generate (AVG(id1999_dep_7.DepDelay));
Delay_dep_1999_8 = foreach group_dep_1999_8 generate (AVG(id1999_dep_8.DepDelay));
Delay_dep_1999_9 = foreach group_dep_1999_9 generate (AVG(id1999_dep_9.DepDelay));
Delay_dep_1999_10 = foreach group_dep_1999_10 generate (AVG(id1999_dep_10.DepDelay));
Delay_dep_1999_11 = foreach group_dep_1999_11 generate (AVG(id1999_dep_11.DepDelay));
Delay_dep_1999_12 = foreach group_dep_1999_12 generate (AVG(id1999_dep_12.DepDelay));
Delay_dep_1999_13 = foreach group_dep_1999_13 generate (AVG(id1999_dep_13.DepDelay));
Delay_dep_1999_14 = foreach group_dep_1999_14 generate (AVG(id1999_dep_14.DepDelay));
Delay_dep_1999_15 = foreach group_dep_1999_15 generate (AVG(id1999_dep_15.DepDelay));
Delay_dep_1999_16 = foreach group_dep_1999_16 generate (AVG(id1999_dep_16.DepDelay));
Delay_dep_1999_17 = foreach group_dep_1999_17 generate (AVG(id1999_dep_17.DepDelay));
Delay_dep_1999_18 = foreach group_dep_1999_18 generate (AVG(id1999_dep_18.DepDelay));
Delay_dep_1999_19 = foreach group_dep_1999_19 generate (AVG(id1999_dep_19.DepDelay));
Delay_dep_1999_20 = foreach group_dep_1999_20 generate (AVG(id1999_dep_20.DepDelay));
Delay_dep_1999_21 = foreach group_dep_1999_21 generate (AVG(id1999_dep_21.DepDelay));
Delay_dep_1999_22 = foreach group_dep_1999_22 generate (AVG(id1999_dep_22.DepDelay));
Delay_dep_1999_23 = foreach group_dep_1999_23 generate (AVG(id1999_dep_23.DepDelay));
Union1999 = UNION Delay_dep_1999_0,Delay_dep_1999_1,Delay_dep_1999_2,Delay_dep_1999_3,Delay_dep_1999_4,Delay_dep_1999_5,Delay_dep_1999_6,Delay_dep_1999_7,Delay_dep_1999_8,Delay_dep_1999_9,Delay_dep_1999_10,Delay_dep_1999_11,Delay_dep_1999_12,Delay_dep_1999_13,Delay_dep_1999_14,Delay_dep_1999_15,Delay_dep_1999_16,Delay_dep_1999_17,Delay_dep_1999_18,Delay_dep_1999_19,Delay_dep_1999_20,Delay_dep_1999_21,Delay_dep_1999_22,Delay_dep_1999_23;
STORE Union1999 INTO '/user/s31wcp55/q3/1999/dep' USING PigStorage (',');


id2000 = LOAD 'airflight/2000.csv' USING PigStorage(',') AS (
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
id2000_arr_0 = filter id2000 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2000_arr_1 = filter id2000 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2000_arr_2 = filter id2000 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2000_arr_3 = filter id2000 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2000_arr_4 = filter id2000 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2000_arr_5 = filter id2000 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2000_arr_6 = filter id2000 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2000_arr_7 = filter id2000 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2000_arr_8 = filter id2000 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2000_arr_9 = filter id2000 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2000_arr_10 = filter id2000 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2000_arr_11 = filter id2000 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2000_arr_12 = filter id2000 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2000_arr_13 = filter id2000 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2000_arr_14 = filter id2000 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2000_arr_15 = filter id2000 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2000_arr_16 = filter id2000 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2000_arr_17 = filter id2000 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2000_arr_18 = filter id2000 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2000_arr_19 = filter id2000 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2000_arr_20 = filter id2000 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2000_arr_21 = filter id2000 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2000_arr_22 = filter id2000 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2000_arr_23 = filter id2000 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2000_0 = group id2000_arr_0 all;
group_arr_2000_1 = group id2000_arr_1 all;
group_arr_2000_2 = group id2000_arr_2 all;
group_arr_2000_3 = group id2000_arr_3 all;
group_arr_2000_4 = group id2000_arr_4 all;
group_arr_2000_5 = group id2000_arr_5 all;
group_arr_2000_6 = group id2000_arr_6 all;
group_arr_2000_7 = group id2000_arr_7 all;
group_arr_2000_8 = group id2000_arr_8 all;
group_arr_2000_9 = group id2000_arr_9 all;
group_arr_2000_10 = group id2000_arr_10 all;
group_arr_2000_11 = group id2000_arr_11 all;
group_arr_2000_12 = group id2000_arr_12 all;
group_arr_2000_13 = group id2000_arr_13 all;
group_arr_2000_14 = group id2000_arr_14 all;
group_arr_2000_15 = group id2000_arr_15 all;
group_arr_2000_16 = group id2000_arr_16 all;
group_arr_2000_17 = group id2000_arr_17 all;
group_arr_2000_18 = group id2000_arr_18 all;
group_arr_2000_19 = group id2000_arr_19 all;
group_arr_2000_20 = group id2000_arr_20 all;
group_arr_2000_21 = group id2000_arr_21 all;
group_arr_2000_22 = group id2000_arr_22 all;
group_arr_2000_23 = group id2000_arr_23 all;
Delay_arr_2000_0 = foreach group_arr_2000_0 generate (AVG(id2000_arr_0.ArrDelay));
Delay_arr_2000_1 = foreach group_arr_2000_1 generate (AVG(id2000_arr_1.ArrDelay));
Delay_arr_2000_2 = foreach group_arr_2000_2 generate (AVG(id2000_arr_2.ArrDelay));
Delay_arr_2000_3 = foreach group_arr_2000_3 generate (AVG(id2000_arr_3.ArrDelay));
Delay_arr_2000_4 = foreach group_arr_2000_4 generate (AVG(id2000_arr_4.ArrDelay));
Delay_arr_2000_5 = foreach group_arr_2000_5 generate (AVG(id2000_arr_5.ArrDelay));
Delay_arr_2000_6 = foreach group_arr_2000_6 generate (AVG(id2000_arr_6.ArrDelay));
Delay_arr_2000_7 = foreach group_arr_2000_7 generate (AVG(id2000_arr_7.ArrDelay));
Delay_arr_2000_8 = foreach group_arr_2000_8 generate (AVG(id2000_arr_8.ArrDelay));
Delay_arr_2000_9 = foreach group_arr_2000_9 generate (AVG(id2000_arr_9.ArrDelay));
Delay_arr_2000_10 = foreach group_arr_2000_10 generate (AVG(id2000_arr_10.ArrDelay));
Delay_arr_2000_11 = foreach group_arr_2000_11 generate (AVG(id2000_arr_11.ArrDelay));
Delay_arr_2000_12 = foreach group_arr_2000_12 generate (AVG(id2000_arr_12.ArrDelay));
Delay_arr_2000_13 = foreach group_arr_2000_13 generate (AVG(id2000_arr_13.ArrDelay));
Delay_arr_2000_14 = foreach group_arr_2000_14 generate (AVG(id2000_arr_14.ArrDelay));
Delay_arr_2000_15 = foreach group_arr_2000_15 generate (AVG(id2000_arr_15.ArrDelay));
Delay_arr_2000_16 = foreach group_arr_2000_16 generate (AVG(id2000_arr_16.ArrDelay));
Delay_arr_2000_17 = foreach group_arr_2000_17 generate (AVG(id2000_arr_17.ArrDelay));
Delay_arr_2000_18 = foreach group_arr_2000_18 generate (AVG(id2000_arr_18.ArrDelay));
Delay_arr_2000_19 = foreach group_arr_2000_19 generate (AVG(id2000_arr_19.ArrDelay));
Delay_arr_2000_20 = foreach group_arr_2000_20 generate (AVG(id2000_arr_20.ArrDelay));
Delay_arr_2000_21 = foreach group_arr_2000_21 generate (AVG(id2000_arr_21.ArrDelay));
Delay_arr_2000_22 = foreach group_arr_2000_22 generate (AVG(id2000_arr_22.ArrDelay));
Delay_arr_2000_23 = foreach group_arr_2000_23 generate (AVG(id2000_arr_23.ArrDelay));
Union2000 = UNION Delay_arr_2000_0,Delay_arr_2000_1,Delay_arr_2000_2,Delay_arr_2000_3,Delay_arr_2000_4,Delay_arr_2000_5,Delay_arr_2000_6,Delay_arr_2000_7,Delay_arr_2000_8,Delay_arr_2000_9,Delay_arr_2000_10,Delay_arr_2000_11,Delay_arr_2000_12,Delay_arr_2000_13,Delay_arr_2000_14,Delay_arr_2000_15,Delay_arr_2000_16,Delay_arr_2000_17,Delay_arr_2000_18,Delay_arr_2000_19,Delay_arr_2000_20,Delay_arr_2000_21,Delay_arr_2000_22,Delay_arr_2000_23;
STORE Union2000 INTO '/user/s31wcp55/q3/2000/arr' USING PigStorage (',');
id2000_dep_0 = filter id2000 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2000_dep_1 = filter id2000 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2000_dep_2 = filter id2000 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2000_dep_3 = filter id2000 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2000_dep_4 = filter id2000 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2000_dep_5 = filter id2000 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2000_dep_6 = filter id2000 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2000_dep_7 = filter id2000 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2000_dep_8 = filter id2000 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2000_dep_9 = filter id2000 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2000_dep_10 = filter id2000 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2000_dep_11 = filter id2000 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2000_dep_12 = filter id2000 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2000_dep_13 = filter id2000 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2000_dep_14 = filter id2000 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2000_dep_15 = filter id2000 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2000_dep_16 = filter id2000 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2000_dep_17 = filter id2000 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2000_dep_18 = filter id2000 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2000_dep_19 = filter id2000 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2000_dep_20 = filter id2000 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2000_dep_21 = filter id2000 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2000_dep_22 = filter id2000 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2000_dep_23 = filter id2000 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2000_0 = group id2000_dep_0 all;
group_dep_2000_1 = group id2000_dep_1 all;
group_dep_2000_2 = group id2000_dep_2 all;
group_dep_2000_3 = group id2000_dep_3 all;
group_dep_2000_4 = group id2000_dep_4 all;
group_dep_2000_5 = group id2000_dep_5 all;
group_dep_2000_6 = group id2000_dep_6 all;
group_dep_2000_7 = group id2000_dep_7 all;
group_dep_2000_8 = group id2000_dep_8 all;
group_dep_2000_9 = group id2000_dep_9 all;
group_dep_2000_10 = group id2000_dep_10 all;
group_dep_2000_11 = group id2000_dep_11 all;
group_dep_2000_12 = group id2000_dep_12 all;
group_dep_2000_13 = group id2000_dep_13 all;
group_dep_2000_14 = group id2000_dep_14 all;
group_dep_2000_15 = group id2000_dep_15 all;
group_dep_2000_16 = group id2000_dep_16 all;
group_dep_2000_17 = group id2000_dep_17 all;
group_dep_2000_18 = group id2000_dep_18 all;
group_dep_2000_19 = group id2000_dep_19 all;
group_dep_2000_20 = group id2000_dep_20 all;
group_dep_2000_21 = group id2000_dep_21 all;
group_dep_2000_22 = group id2000_dep_22 all;
group_dep_2000_23 = group id2000_dep_23 all;
Delay_dep_2000_0 = foreach group_dep_2000_0 generate (AVG(id2000_dep_0.DepDelay));
Delay_dep_2000_1 = foreach group_dep_2000_1 generate (AVG(id2000_dep_1.DepDelay));
Delay_dep_2000_2 = foreach group_dep_2000_2 generate (AVG(id2000_dep_2.DepDelay));
Delay_dep_2000_3 = foreach group_dep_2000_3 generate (AVG(id2000_dep_3.DepDelay));
Delay_dep_2000_4 = foreach group_dep_2000_4 generate (AVG(id2000_dep_4.DepDelay));
Delay_dep_2000_5 = foreach group_dep_2000_5 generate (AVG(id2000_dep_5.DepDelay));
Delay_dep_2000_6 = foreach group_dep_2000_6 generate (AVG(id2000_dep_6.DepDelay));
Delay_dep_2000_7 = foreach group_dep_2000_7 generate (AVG(id2000_dep_7.DepDelay));
Delay_dep_2000_8 = foreach group_dep_2000_8 generate (AVG(id2000_dep_8.DepDelay));
Delay_dep_2000_9 = foreach group_dep_2000_9 generate (AVG(id2000_dep_9.DepDelay));
Delay_dep_2000_10 = foreach group_dep_2000_10 generate (AVG(id2000_dep_10.DepDelay));
Delay_dep_2000_11 = foreach group_dep_2000_11 generate (AVG(id2000_dep_11.DepDelay));
Delay_dep_2000_12 = foreach group_dep_2000_12 generate (AVG(id2000_dep_12.DepDelay));
Delay_dep_2000_13 = foreach group_dep_2000_13 generate (AVG(id2000_dep_13.DepDelay));
Delay_dep_2000_14 = foreach group_dep_2000_14 generate (AVG(id2000_dep_14.DepDelay));
Delay_dep_2000_15 = foreach group_dep_2000_15 generate (AVG(id2000_dep_15.DepDelay));
Delay_dep_2000_16 = foreach group_dep_2000_16 generate (AVG(id2000_dep_16.DepDelay));
Delay_dep_2000_17 = foreach group_dep_2000_17 generate (AVG(id2000_dep_17.DepDelay));
Delay_dep_2000_18 = foreach group_dep_2000_18 generate (AVG(id2000_dep_18.DepDelay));
Delay_dep_2000_19 = foreach group_dep_2000_19 generate (AVG(id2000_dep_19.DepDelay));
Delay_dep_2000_20 = foreach group_dep_2000_20 generate (AVG(id2000_dep_20.DepDelay));
Delay_dep_2000_21 = foreach group_dep_2000_21 generate (AVG(id2000_dep_21.DepDelay));
Delay_dep_2000_22 = foreach group_dep_2000_22 generate (AVG(id2000_dep_22.DepDelay));
Delay_dep_2000_23 = foreach group_dep_2000_23 generate (AVG(id2000_dep_23.DepDelay));
Union2000 = UNION Delay_dep_2000_0,Delay_dep_2000_1,Delay_dep_2000_2,Delay_dep_2000_3,Delay_dep_2000_4,Delay_dep_2000_5,Delay_dep_2000_6,Delay_dep_2000_7,Delay_dep_2000_8,Delay_dep_2000_9,Delay_dep_2000_10,Delay_dep_2000_11,Delay_dep_2000_12,Delay_dep_2000_13,Delay_dep_2000_14,Delay_dep_2000_15,Delay_dep_2000_16,Delay_dep_2000_17,Delay_dep_2000_18,Delay_dep_2000_19,Delay_dep_2000_20,Delay_dep_2000_21,Delay_dep_2000_22,Delay_dep_2000_23;
STORE Union2000 INTO '/user/s31wcp55/q3/2000/dep' USING PigStorage (',');


id2001 = LOAD 'airflight/2001.csv' USING PigStorage(',') AS (
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
id2001_arr_0 = filter id2001 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2001_arr_1 = filter id2001 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2001_arr_2 = filter id2001 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2001_arr_3 = filter id2001 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2001_arr_4 = filter id2001 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2001_arr_5 = filter id2001 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2001_arr_6 = filter id2001 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2001_arr_7 = filter id2001 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2001_arr_8 = filter id2001 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2001_arr_9 = filter id2001 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2001_arr_10 = filter id2001 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2001_arr_11 = filter id2001 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2001_arr_12 = filter id2001 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2001_arr_13 = filter id2001 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2001_arr_14 = filter id2001 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2001_arr_15 = filter id2001 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2001_arr_16 = filter id2001 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2001_arr_17 = filter id2001 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2001_arr_18 = filter id2001 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2001_arr_19 = filter id2001 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2001_arr_20 = filter id2001 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2001_arr_21 = filter id2001 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2001_arr_22 = filter id2001 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2001_arr_23 = filter id2001 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2001_0 = group id2001_arr_0 all;
group_arr_2001_1 = group id2001_arr_1 all;
group_arr_2001_2 = group id2001_arr_2 all;
group_arr_2001_3 = group id2001_arr_3 all;
group_arr_2001_4 = group id2001_arr_4 all;
group_arr_2001_5 = group id2001_arr_5 all;
group_arr_2001_6 = group id2001_arr_6 all;
group_arr_2001_7 = group id2001_arr_7 all;
group_arr_2001_8 = group id2001_arr_8 all;
group_arr_2001_9 = group id2001_arr_9 all;
group_arr_2001_10 = group id2001_arr_10 all;
group_arr_2001_11 = group id2001_arr_11 all;
group_arr_2001_12 = group id2001_arr_12 all;
group_arr_2001_13 = group id2001_arr_13 all;
group_arr_2001_14 = group id2001_arr_14 all;
group_arr_2001_15 = group id2001_arr_15 all;
group_arr_2001_16 = group id2001_arr_16 all;
group_arr_2001_17 = group id2001_arr_17 all;
group_arr_2001_18 = group id2001_arr_18 all;
group_arr_2001_19 = group id2001_arr_19 all;
group_arr_2001_20 = group id2001_arr_20 all;
group_arr_2001_21 = group id2001_arr_21 all;
group_arr_2001_22 = group id2001_arr_22 all;
group_arr_2001_23 = group id2001_arr_23 all;
Delay_arr_2001_0 = foreach group_arr_2001_0 generate (AVG(id2001_arr_0.ArrDelay));
Delay_arr_2001_1 = foreach group_arr_2001_1 generate (AVG(id2001_arr_1.ArrDelay));
Delay_arr_2001_2 = foreach group_arr_2001_2 generate (AVG(id2001_arr_2.ArrDelay));
Delay_arr_2001_3 = foreach group_arr_2001_3 generate (AVG(id2001_arr_3.ArrDelay));
Delay_arr_2001_4 = foreach group_arr_2001_4 generate (AVG(id2001_arr_4.ArrDelay));
Delay_arr_2001_5 = foreach group_arr_2001_5 generate (AVG(id2001_arr_5.ArrDelay));
Delay_arr_2001_6 = foreach group_arr_2001_6 generate (AVG(id2001_arr_6.ArrDelay));
Delay_arr_2001_7 = foreach group_arr_2001_7 generate (AVG(id2001_arr_7.ArrDelay));
Delay_arr_2001_8 = foreach group_arr_2001_8 generate (AVG(id2001_arr_8.ArrDelay));
Delay_arr_2001_9 = foreach group_arr_2001_9 generate (AVG(id2001_arr_9.ArrDelay));
Delay_arr_2001_10 = foreach group_arr_2001_10 generate (AVG(id2001_arr_10.ArrDelay));
Delay_arr_2001_11 = foreach group_arr_2001_11 generate (AVG(id2001_arr_11.ArrDelay));
Delay_arr_2001_12 = foreach group_arr_2001_12 generate (AVG(id2001_arr_12.ArrDelay));
Delay_arr_2001_13 = foreach group_arr_2001_13 generate (AVG(id2001_arr_13.ArrDelay));
Delay_arr_2001_14 = foreach group_arr_2001_14 generate (AVG(id2001_arr_14.ArrDelay));
Delay_arr_2001_15 = foreach group_arr_2001_15 generate (AVG(id2001_arr_15.ArrDelay));
Delay_arr_2001_16 = foreach group_arr_2001_16 generate (AVG(id2001_arr_16.ArrDelay));
Delay_arr_2001_17 = foreach group_arr_2001_17 generate (AVG(id2001_arr_17.ArrDelay));
Delay_arr_2001_18 = foreach group_arr_2001_18 generate (AVG(id2001_arr_18.ArrDelay));
Delay_arr_2001_19 = foreach group_arr_2001_19 generate (AVG(id2001_arr_19.ArrDelay));
Delay_arr_2001_20 = foreach group_arr_2001_20 generate (AVG(id2001_arr_20.ArrDelay));
Delay_arr_2001_21 = foreach group_arr_2001_21 generate (AVG(id2001_arr_21.ArrDelay));
Delay_arr_2001_22 = foreach group_arr_2001_22 generate (AVG(id2001_arr_22.ArrDelay));
Delay_arr_2001_23 = foreach group_arr_2001_23 generate (AVG(id2001_arr_23.ArrDelay));
Union2001 = UNION Delay_arr_2001_0,Delay_arr_2001_1,Delay_arr_2001_2,Delay_arr_2001_3,Delay_arr_2001_4,Delay_arr_2001_5,Delay_arr_2001_6,Delay_arr_2001_7,Delay_arr_2001_8,Delay_arr_2001_9,Delay_arr_2001_10,Delay_arr_2001_11,Delay_arr_2001_12,Delay_arr_2001_13,Delay_arr_2001_14,Delay_arr_2001_15,Delay_arr_2001_16,Delay_arr_2001_17,Delay_arr_2001_18,Delay_arr_2001_19,Delay_arr_2001_20,Delay_arr_2001_21,Delay_arr_2001_22,Delay_arr_2001_23;
STORE Union2001 INTO '/user/s31wcp55/q3/2001/arr' USING PigStorage (',');
id2001_dep_0 = filter id2001 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2001_dep_1 = filter id2001 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2001_dep_2 = filter id2001 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2001_dep_3 = filter id2001 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2001_dep_4 = filter id2001 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2001_dep_5 = filter id2001 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2001_dep_6 = filter id2001 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2001_dep_7 = filter id2001 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2001_dep_8 = filter id2001 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2001_dep_9 = filter id2001 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2001_dep_10 = filter id2001 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2001_dep_11 = filter id2001 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2001_dep_12 = filter id2001 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2001_dep_13 = filter id2001 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2001_dep_14 = filter id2001 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2001_dep_15 = filter id2001 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2001_dep_16 = filter id2001 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2001_dep_17 = filter id2001 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2001_dep_18 = filter id2001 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2001_dep_19 = filter id2001 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2001_dep_20 = filter id2001 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2001_dep_21 = filter id2001 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2001_dep_22 = filter id2001 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2001_dep_23 = filter id2001 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2001_0 = group id2001_dep_0 all;
group_dep_2001_1 = group id2001_dep_1 all;
group_dep_2001_2 = group id2001_dep_2 all;
group_dep_2001_3 = group id2001_dep_3 all;
group_dep_2001_4 = group id2001_dep_4 all;
group_dep_2001_5 = group id2001_dep_5 all;
group_dep_2001_6 = group id2001_dep_6 all;
group_dep_2001_7 = group id2001_dep_7 all;
group_dep_2001_8 = group id2001_dep_8 all;
group_dep_2001_9 = group id2001_dep_9 all;
group_dep_2001_10 = group id2001_dep_10 all;
group_dep_2001_11 = group id2001_dep_11 all;
group_dep_2001_12 = group id2001_dep_12 all;
group_dep_2001_13 = group id2001_dep_13 all;
group_dep_2001_14 = group id2001_dep_14 all;
group_dep_2001_15 = group id2001_dep_15 all;
group_dep_2001_16 = group id2001_dep_16 all;
group_dep_2001_17 = group id2001_dep_17 all;
group_dep_2001_18 = group id2001_dep_18 all;
group_dep_2001_19 = group id2001_dep_19 all;
group_dep_2001_20 = group id2001_dep_20 all;
group_dep_2001_21 = group id2001_dep_21 all;
group_dep_2001_22 = group id2001_dep_22 all;
group_dep_2001_23 = group id2001_dep_23 all;
Delay_dep_2001_0 = foreach group_dep_2001_0 generate (AVG(id2001_dep_0.DepDelay));
Delay_dep_2001_1 = foreach group_dep_2001_1 generate (AVG(id2001_dep_1.DepDelay));
Delay_dep_2001_2 = foreach group_dep_2001_2 generate (AVG(id2001_dep_2.DepDelay));
Delay_dep_2001_3 = foreach group_dep_2001_3 generate (AVG(id2001_dep_3.DepDelay));
Delay_dep_2001_4 = foreach group_dep_2001_4 generate (AVG(id2001_dep_4.DepDelay));
Delay_dep_2001_5 = foreach group_dep_2001_5 generate (AVG(id2001_dep_5.DepDelay));
Delay_dep_2001_6 = foreach group_dep_2001_6 generate (AVG(id2001_dep_6.DepDelay));
Delay_dep_2001_7 = foreach group_dep_2001_7 generate (AVG(id2001_dep_7.DepDelay));
Delay_dep_2001_8 = foreach group_dep_2001_8 generate (AVG(id2001_dep_8.DepDelay));
Delay_dep_2001_9 = foreach group_dep_2001_9 generate (AVG(id2001_dep_9.DepDelay));
Delay_dep_2001_10 = foreach group_dep_2001_10 generate (AVG(id2001_dep_10.DepDelay));
Delay_dep_2001_11 = foreach group_dep_2001_11 generate (AVG(id2001_dep_11.DepDelay));
Delay_dep_2001_12 = foreach group_dep_2001_12 generate (AVG(id2001_dep_12.DepDelay));
Delay_dep_2001_13 = foreach group_dep_2001_13 generate (AVG(id2001_dep_13.DepDelay));
Delay_dep_2001_14 = foreach group_dep_2001_14 generate (AVG(id2001_dep_14.DepDelay));
Delay_dep_2001_15 = foreach group_dep_2001_15 generate (AVG(id2001_dep_15.DepDelay));
Delay_dep_2001_16 = foreach group_dep_2001_16 generate (AVG(id2001_dep_16.DepDelay));
Delay_dep_2001_17 = foreach group_dep_2001_17 generate (AVG(id2001_dep_17.DepDelay));
Delay_dep_2001_18 = foreach group_dep_2001_18 generate (AVG(id2001_dep_18.DepDelay));
Delay_dep_2001_19 = foreach group_dep_2001_19 generate (AVG(id2001_dep_19.DepDelay));
Delay_dep_2001_20 = foreach group_dep_2001_20 generate (AVG(id2001_dep_20.DepDelay));
Delay_dep_2001_21 = foreach group_dep_2001_21 generate (AVG(id2001_dep_21.DepDelay));
Delay_dep_2001_22 = foreach group_dep_2001_22 generate (AVG(id2001_dep_22.DepDelay));
Delay_dep_2001_23 = foreach group_dep_2001_23 generate (AVG(id2001_dep_23.DepDelay));
Union2001 = UNION Delay_dep_2001_0,Delay_dep_2001_1,Delay_dep_2001_2,Delay_dep_2001_3,Delay_dep_2001_4,Delay_dep_2001_5,Delay_dep_2001_6,Delay_dep_2001_7,Delay_dep_2001_8,Delay_dep_2001_9,Delay_dep_2001_10,Delay_dep_2001_11,Delay_dep_2001_12,Delay_dep_2001_13,Delay_dep_2001_14,Delay_dep_2001_15,Delay_dep_2001_16,Delay_dep_2001_17,Delay_dep_2001_18,Delay_dep_2001_19,Delay_dep_2001_20,Delay_dep_2001_21,Delay_dep_2001_22,Delay_dep_2001_23;
STORE Union2001 INTO '/user/s31wcp55/q3/2001/dep' USING PigStorage (',');


id2002 = LOAD 'airflight/2002.csv' USING PigStorage(',') AS (
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
id2002_arr_0 = filter id2002 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2002_arr_1 = filter id2002 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2002_arr_2 = filter id2002 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2002_arr_3 = filter id2002 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2002_arr_4 = filter id2002 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2002_arr_5 = filter id2002 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2002_arr_6 = filter id2002 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2002_arr_7 = filter id2002 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2002_arr_8 = filter id2002 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2002_arr_9 = filter id2002 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2002_arr_10 = filter id2002 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2002_arr_11 = filter id2002 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2002_arr_12 = filter id2002 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2002_arr_13 = filter id2002 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2002_arr_14 = filter id2002 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2002_arr_15 = filter id2002 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2002_arr_16 = filter id2002 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2002_arr_17 = filter id2002 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2002_arr_18 = filter id2002 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2002_arr_19 = filter id2002 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2002_arr_20 = filter id2002 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2002_arr_21 = filter id2002 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2002_arr_22 = filter id2002 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2002_arr_23 = filter id2002 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2002_0 = group id2002_arr_0 all;
group_arr_2002_1 = group id2002_arr_1 all;
group_arr_2002_2 = group id2002_arr_2 all;
group_arr_2002_3 = group id2002_arr_3 all;
group_arr_2002_4 = group id2002_arr_4 all;
group_arr_2002_5 = group id2002_arr_5 all;
group_arr_2002_6 = group id2002_arr_6 all;
group_arr_2002_7 = group id2002_arr_7 all;
group_arr_2002_8 = group id2002_arr_8 all;
group_arr_2002_9 = group id2002_arr_9 all;
group_arr_2002_10 = group id2002_arr_10 all;
group_arr_2002_11 = group id2002_arr_11 all;
group_arr_2002_12 = group id2002_arr_12 all;
group_arr_2002_13 = group id2002_arr_13 all;
group_arr_2002_14 = group id2002_arr_14 all;
group_arr_2002_15 = group id2002_arr_15 all;
group_arr_2002_16 = group id2002_arr_16 all;
group_arr_2002_17 = group id2002_arr_17 all;
group_arr_2002_18 = group id2002_arr_18 all;
group_arr_2002_19 = group id2002_arr_19 all;
group_arr_2002_20 = group id2002_arr_20 all;
group_arr_2002_21 = group id2002_arr_21 all;
group_arr_2002_22 = group id2002_arr_22 all;
group_arr_2002_23 = group id2002_arr_23 all;
Delay_arr_2002_0 = foreach group_arr_2002_0 generate (AVG(id2002_arr_0.ArrDelay));
Delay_arr_2002_1 = foreach group_arr_2002_1 generate (AVG(id2002_arr_1.ArrDelay));
Delay_arr_2002_2 = foreach group_arr_2002_2 generate (AVG(id2002_arr_2.ArrDelay));
Delay_arr_2002_3 = foreach group_arr_2002_3 generate (AVG(id2002_arr_3.ArrDelay));
Delay_arr_2002_4 = foreach group_arr_2002_4 generate (AVG(id2002_arr_4.ArrDelay));
Delay_arr_2002_5 = foreach group_arr_2002_5 generate (AVG(id2002_arr_5.ArrDelay));
Delay_arr_2002_6 = foreach group_arr_2002_6 generate (AVG(id2002_arr_6.ArrDelay));
Delay_arr_2002_7 = foreach group_arr_2002_7 generate (AVG(id2002_arr_7.ArrDelay));
Delay_arr_2002_8 = foreach group_arr_2002_8 generate (AVG(id2002_arr_8.ArrDelay));
Delay_arr_2002_9 = foreach group_arr_2002_9 generate (AVG(id2002_arr_9.ArrDelay));
Delay_arr_2002_10 = foreach group_arr_2002_10 generate (AVG(id2002_arr_10.ArrDelay));
Delay_arr_2002_11 = foreach group_arr_2002_11 generate (AVG(id2002_arr_11.ArrDelay));
Delay_arr_2002_12 = foreach group_arr_2002_12 generate (AVG(id2002_arr_12.ArrDelay));
Delay_arr_2002_13 = foreach group_arr_2002_13 generate (AVG(id2002_arr_13.ArrDelay));
Delay_arr_2002_14 = foreach group_arr_2002_14 generate (AVG(id2002_arr_14.ArrDelay));
Delay_arr_2002_15 = foreach group_arr_2002_15 generate (AVG(id2002_arr_15.ArrDelay));
Delay_arr_2002_16 = foreach group_arr_2002_16 generate (AVG(id2002_arr_16.ArrDelay));
Delay_arr_2002_17 = foreach group_arr_2002_17 generate (AVG(id2002_arr_17.ArrDelay));
Delay_arr_2002_18 = foreach group_arr_2002_18 generate (AVG(id2002_arr_18.ArrDelay));
Delay_arr_2002_19 = foreach group_arr_2002_19 generate (AVG(id2002_arr_19.ArrDelay));
Delay_arr_2002_20 = foreach group_arr_2002_20 generate (AVG(id2002_arr_20.ArrDelay));
Delay_arr_2002_21 = foreach group_arr_2002_21 generate (AVG(id2002_arr_21.ArrDelay));
Delay_arr_2002_22 = foreach group_arr_2002_22 generate (AVG(id2002_arr_22.ArrDelay));
Delay_arr_2002_23 = foreach group_arr_2002_23 generate (AVG(id2002_arr_23.ArrDelay));
Union2002 = UNION Delay_arr_2002_0,Delay_arr_2002_1,Delay_arr_2002_2,Delay_arr_2002_3,Delay_arr_2002_4,Delay_arr_2002_5,Delay_arr_2002_6,Delay_arr_2002_7,Delay_arr_2002_8,Delay_arr_2002_9,Delay_arr_2002_10,Delay_arr_2002_11,Delay_arr_2002_12,Delay_arr_2002_13,Delay_arr_2002_14,Delay_arr_2002_15,Delay_arr_2002_16,Delay_arr_2002_17,Delay_arr_2002_18,Delay_arr_2002_19,Delay_arr_2002_20,Delay_arr_2002_21,Delay_arr_2002_22,Delay_arr_2002_23;
STORE Union2002 INTO '/user/s31wcp55/q3/2002/arr' USING PigStorage (',');
id2002_dep_0 = filter id2002 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2002_dep_1 = filter id2002 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2002_dep_2 = filter id2002 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2002_dep_3 = filter id2002 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2002_dep_4 = filter id2002 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2002_dep_5 = filter id2002 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2002_dep_6 = filter id2002 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2002_dep_7 = filter id2002 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2002_dep_8 = filter id2002 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2002_dep_9 = filter id2002 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2002_dep_10 = filter id2002 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2002_dep_11 = filter id2002 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2002_dep_12 = filter id2002 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2002_dep_13 = filter id2002 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2002_dep_14 = filter id2002 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2002_dep_15 = filter id2002 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2002_dep_16 = filter id2002 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2002_dep_17 = filter id2002 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2002_dep_18 = filter id2002 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2002_dep_19 = filter id2002 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2002_dep_20 = filter id2002 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2002_dep_21 = filter id2002 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2002_dep_22 = filter id2002 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2002_dep_23 = filter id2002 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2002_0 = group id2002_dep_0 all;
group_dep_2002_1 = group id2002_dep_1 all;
group_dep_2002_2 = group id2002_dep_2 all;
group_dep_2002_3 = group id2002_dep_3 all;
group_dep_2002_4 = group id2002_dep_4 all;
group_dep_2002_5 = group id2002_dep_5 all;
group_dep_2002_6 = group id2002_dep_6 all;
group_dep_2002_7 = group id2002_dep_7 all;
group_dep_2002_8 = group id2002_dep_8 all;
group_dep_2002_9 = group id2002_dep_9 all;
group_dep_2002_10 = group id2002_dep_10 all;
group_dep_2002_11 = group id2002_dep_11 all;
group_dep_2002_12 = group id2002_dep_12 all;
group_dep_2002_13 = group id2002_dep_13 all;
group_dep_2002_14 = group id2002_dep_14 all;
group_dep_2002_15 = group id2002_dep_15 all;
group_dep_2002_16 = group id2002_dep_16 all;
group_dep_2002_17 = group id2002_dep_17 all;
group_dep_2002_18 = group id2002_dep_18 all;
group_dep_2002_19 = group id2002_dep_19 all;
group_dep_2002_20 = group id2002_dep_20 all;
group_dep_2002_21 = group id2002_dep_21 all;
group_dep_2002_22 = group id2002_dep_22 all;
group_dep_2002_23 = group id2002_dep_23 all;
Delay_dep_2002_0 = foreach group_dep_2002_0 generate (AVG(id2002_dep_0.DepDelay));
Delay_dep_2002_1 = foreach group_dep_2002_1 generate (AVG(id2002_dep_1.DepDelay));
Delay_dep_2002_2 = foreach group_dep_2002_2 generate (AVG(id2002_dep_2.DepDelay));
Delay_dep_2002_3 = foreach group_dep_2002_3 generate (AVG(id2002_dep_3.DepDelay));
Delay_dep_2002_4 = foreach group_dep_2002_4 generate (AVG(id2002_dep_4.DepDelay));
Delay_dep_2002_5 = foreach group_dep_2002_5 generate (AVG(id2002_dep_5.DepDelay));
Delay_dep_2002_6 = foreach group_dep_2002_6 generate (AVG(id2002_dep_6.DepDelay));
Delay_dep_2002_7 = foreach group_dep_2002_7 generate (AVG(id2002_dep_7.DepDelay));
Delay_dep_2002_8 = foreach group_dep_2002_8 generate (AVG(id2002_dep_8.DepDelay));
Delay_dep_2002_9 = foreach group_dep_2002_9 generate (AVG(id2002_dep_9.DepDelay));
Delay_dep_2002_10 = foreach group_dep_2002_10 generate (AVG(id2002_dep_10.DepDelay));
Delay_dep_2002_11 = foreach group_dep_2002_11 generate (AVG(id2002_dep_11.DepDelay));
Delay_dep_2002_12 = foreach group_dep_2002_12 generate (AVG(id2002_dep_12.DepDelay));
Delay_dep_2002_13 = foreach group_dep_2002_13 generate (AVG(id2002_dep_13.DepDelay));
Delay_dep_2002_14 = foreach group_dep_2002_14 generate (AVG(id2002_dep_14.DepDelay));
Delay_dep_2002_15 = foreach group_dep_2002_15 generate (AVG(id2002_dep_15.DepDelay));
Delay_dep_2002_16 = foreach group_dep_2002_16 generate (AVG(id2002_dep_16.DepDelay));
Delay_dep_2002_17 = foreach group_dep_2002_17 generate (AVG(id2002_dep_17.DepDelay));
Delay_dep_2002_18 = foreach group_dep_2002_18 generate (AVG(id2002_dep_18.DepDelay));
Delay_dep_2002_19 = foreach group_dep_2002_19 generate (AVG(id2002_dep_19.DepDelay));
Delay_dep_2002_20 = foreach group_dep_2002_20 generate (AVG(id2002_dep_20.DepDelay));
Delay_dep_2002_21 = foreach group_dep_2002_21 generate (AVG(id2002_dep_21.DepDelay));
Delay_dep_2002_22 = foreach group_dep_2002_22 generate (AVG(id2002_dep_22.DepDelay));
Delay_dep_2002_23 = foreach group_dep_2002_23 generate (AVG(id2002_dep_23.DepDelay));
Union2002 = UNION Delay_dep_2002_0,Delay_dep_2002_1,Delay_dep_2002_2,Delay_dep_2002_3,Delay_dep_2002_4,Delay_dep_2002_5,Delay_dep_2002_6,Delay_dep_2002_7,Delay_dep_2002_8,Delay_dep_2002_9,Delay_dep_2002_10,Delay_dep_2002_11,Delay_dep_2002_12,Delay_dep_2002_13,Delay_dep_2002_14,Delay_dep_2002_15,Delay_dep_2002_16,Delay_dep_2002_17,Delay_dep_2002_18,Delay_dep_2002_19,Delay_dep_2002_20,Delay_dep_2002_21,Delay_dep_2002_22,Delay_dep_2002_23;
STORE Union2002 INTO '/user/s31wcp55/q3/2002/dep' USING PigStorage (',');


id2003 = LOAD 'airflight/2003.csv' USING PigStorage(',') AS (
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
id2003_arr_0 = filter id2003 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2003_arr_1 = filter id2003 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2003_arr_2 = filter id2003 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2003_arr_3 = filter id2003 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2003_arr_4 = filter id2003 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2003_arr_5 = filter id2003 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2003_arr_6 = filter id2003 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2003_arr_7 = filter id2003 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2003_arr_8 = filter id2003 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2003_arr_9 = filter id2003 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2003_arr_10 = filter id2003 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2003_arr_11 = filter id2003 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2003_arr_12 = filter id2003 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2003_arr_13 = filter id2003 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2003_arr_14 = filter id2003 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2003_arr_15 = filter id2003 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2003_arr_16 = filter id2003 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2003_arr_17 = filter id2003 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2003_arr_18 = filter id2003 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2003_arr_19 = filter id2003 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2003_arr_20 = filter id2003 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2003_arr_21 = filter id2003 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2003_arr_22 = filter id2003 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2003_arr_23 = filter id2003 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2003_0 = group id2003_arr_0 all;
group_arr_2003_1 = group id2003_arr_1 all;
group_arr_2003_2 = group id2003_arr_2 all;
group_arr_2003_3 = group id2003_arr_3 all;
group_arr_2003_4 = group id2003_arr_4 all;
group_arr_2003_5 = group id2003_arr_5 all;
group_arr_2003_6 = group id2003_arr_6 all;
group_arr_2003_7 = group id2003_arr_7 all;
group_arr_2003_8 = group id2003_arr_8 all;
group_arr_2003_9 = group id2003_arr_9 all;
group_arr_2003_10 = group id2003_arr_10 all;
group_arr_2003_11 = group id2003_arr_11 all;
group_arr_2003_12 = group id2003_arr_12 all;
group_arr_2003_13 = group id2003_arr_13 all;
group_arr_2003_14 = group id2003_arr_14 all;
group_arr_2003_15 = group id2003_arr_15 all;
group_arr_2003_16 = group id2003_arr_16 all;
group_arr_2003_17 = group id2003_arr_17 all;
group_arr_2003_18 = group id2003_arr_18 all;
group_arr_2003_19 = group id2003_arr_19 all;
group_arr_2003_20 = group id2003_arr_20 all;
group_arr_2003_21 = group id2003_arr_21 all;
group_arr_2003_22 = group id2003_arr_22 all;
group_arr_2003_23 = group id2003_arr_23 all;
Delay_arr_2003_0 = foreach group_arr_2003_0 generate (AVG(id2003_arr_0.ArrDelay));
Delay_arr_2003_1 = foreach group_arr_2003_1 generate (AVG(id2003_arr_1.ArrDelay));
Delay_arr_2003_2 = foreach group_arr_2003_2 generate (AVG(id2003_arr_2.ArrDelay));
Delay_arr_2003_3 = foreach group_arr_2003_3 generate (AVG(id2003_arr_3.ArrDelay));
Delay_arr_2003_4 = foreach group_arr_2003_4 generate (AVG(id2003_arr_4.ArrDelay));
Delay_arr_2003_5 = foreach group_arr_2003_5 generate (AVG(id2003_arr_5.ArrDelay));
Delay_arr_2003_6 = foreach group_arr_2003_6 generate (AVG(id2003_arr_6.ArrDelay));
Delay_arr_2003_7 = foreach group_arr_2003_7 generate (AVG(id2003_arr_7.ArrDelay));
Delay_arr_2003_8 = foreach group_arr_2003_8 generate (AVG(id2003_arr_8.ArrDelay));
Delay_arr_2003_9 = foreach group_arr_2003_9 generate (AVG(id2003_arr_9.ArrDelay));
Delay_arr_2003_10 = foreach group_arr_2003_10 generate (AVG(id2003_arr_10.ArrDelay));
Delay_arr_2003_11 = foreach group_arr_2003_11 generate (AVG(id2003_arr_11.ArrDelay));
Delay_arr_2003_12 = foreach group_arr_2003_12 generate (AVG(id2003_arr_12.ArrDelay));
Delay_arr_2003_13 = foreach group_arr_2003_13 generate (AVG(id2003_arr_13.ArrDelay));
Delay_arr_2003_14 = foreach group_arr_2003_14 generate (AVG(id2003_arr_14.ArrDelay));
Delay_arr_2003_15 = foreach group_arr_2003_15 generate (AVG(id2003_arr_15.ArrDelay));
Delay_arr_2003_16 = foreach group_arr_2003_16 generate (AVG(id2003_arr_16.ArrDelay));
Delay_arr_2003_17 = foreach group_arr_2003_17 generate (AVG(id2003_arr_17.ArrDelay));
Delay_arr_2003_18 = foreach group_arr_2003_18 generate (AVG(id2003_arr_18.ArrDelay));
Delay_arr_2003_19 = foreach group_arr_2003_19 generate (AVG(id2003_arr_19.ArrDelay));
Delay_arr_2003_20 = foreach group_arr_2003_20 generate (AVG(id2003_arr_20.ArrDelay));
Delay_arr_2003_21 = foreach group_arr_2003_21 generate (AVG(id2003_arr_21.ArrDelay));
Delay_arr_2003_22 = foreach group_arr_2003_22 generate (AVG(id2003_arr_22.ArrDelay));
Delay_arr_2003_23 = foreach group_arr_2003_23 generate (AVG(id2003_arr_23.ArrDelay));
Union2003 = UNION Delay_arr_2003_0,Delay_arr_2003_1,Delay_arr_2003_2,Delay_arr_2003_3,Delay_arr_2003_4,Delay_arr_2003_5,Delay_arr_2003_6,Delay_arr_2003_7,Delay_arr_2003_8,Delay_arr_2003_9,Delay_arr_2003_10,Delay_arr_2003_11,Delay_arr_2003_12,Delay_arr_2003_13,Delay_arr_2003_14,Delay_arr_2003_15,Delay_arr_2003_16,Delay_arr_2003_17,Delay_arr_2003_18,Delay_arr_2003_19,Delay_arr_2003_20,Delay_arr_2003_21,Delay_arr_2003_22,Delay_arr_2003_23;
STORE Union2003 INTO '/user/s31wcp55/q3/2003/arr' USING PigStorage (',');
id2003_dep_0 = filter id2003 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2003_dep_1 = filter id2003 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2003_dep_2 = filter id2003 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2003_dep_3 = filter id2003 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2003_dep_4 = filter id2003 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2003_dep_5 = filter id2003 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2003_dep_6 = filter id2003 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2003_dep_7 = filter id2003 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2003_dep_8 = filter id2003 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2003_dep_9 = filter id2003 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2003_dep_10 = filter id2003 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2003_dep_11 = filter id2003 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2003_dep_12 = filter id2003 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2003_dep_13 = filter id2003 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2003_dep_14 = filter id2003 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2003_dep_15 = filter id2003 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2003_dep_16 = filter id2003 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2003_dep_17 = filter id2003 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2003_dep_18 = filter id2003 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2003_dep_19 = filter id2003 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2003_dep_20 = filter id2003 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2003_dep_21 = filter id2003 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2003_dep_22 = filter id2003 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2003_dep_23 = filter id2003 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2003_0 = group id2003_dep_0 all;
group_dep_2003_1 = group id2003_dep_1 all;
group_dep_2003_2 = group id2003_dep_2 all;
group_dep_2003_3 = group id2003_dep_3 all;
group_dep_2003_4 = group id2003_dep_4 all;
group_dep_2003_5 = group id2003_dep_5 all;
group_dep_2003_6 = group id2003_dep_6 all;
group_dep_2003_7 = group id2003_dep_7 all;
group_dep_2003_8 = group id2003_dep_8 all;
group_dep_2003_9 = group id2003_dep_9 all;
group_dep_2003_10 = group id2003_dep_10 all;
group_dep_2003_11 = group id2003_dep_11 all;
group_dep_2003_12 = group id2003_dep_12 all;
group_dep_2003_13 = group id2003_dep_13 all;
group_dep_2003_14 = group id2003_dep_14 all;
group_dep_2003_15 = group id2003_dep_15 all;
group_dep_2003_16 = group id2003_dep_16 all;
group_dep_2003_17 = group id2003_dep_17 all;
group_dep_2003_18 = group id2003_dep_18 all;
group_dep_2003_19 = group id2003_dep_19 all;
group_dep_2003_20 = group id2003_dep_20 all;
group_dep_2003_21 = group id2003_dep_21 all;
group_dep_2003_22 = group id2003_dep_22 all;
group_dep_2003_23 = group id2003_dep_23 all;
Delay_dep_2003_0 = foreach group_dep_2003_0 generate (AVG(id2003_dep_0.DepDelay));
Delay_dep_2003_1 = foreach group_dep_2003_1 generate (AVG(id2003_dep_1.DepDelay));
Delay_dep_2003_2 = foreach group_dep_2003_2 generate (AVG(id2003_dep_2.DepDelay));
Delay_dep_2003_3 = foreach group_dep_2003_3 generate (AVG(id2003_dep_3.DepDelay));
Delay_dep_2003_4 = foreach group_dep_2003_4 generate (AVG(id2003_dep_4.DepDelay));
Delay_dep_2003_5 = foreach group_dep_2003_5 generate (AVG(id2003_dep_5.DepDelay));
Delay_dep_2003_6 = foreach group_dep_2003_6 generate (AVG(id2003_dep_6.DepDelay));
Delay_dep_2003_7 = foreach group_dep_2003_7 generate (AVG(id2003_dep_7.DepDelay));
Delay_dep_2003_8 = foreach group_dep_2003_8 generate (AVG(id2003_dep_8.DepDelay));
Delay_dep_2003_9 = foreach group_dep_2003_9 generate (AVG(id2003_dep_9.DepDelay));
Delay_dep_2003_10 = foreach group_dep_2003_10 generate (AVG(id2003_dep_10.DepDelay));
Delay_dep_2003_11 = foreach group_dep_2003_11 generate (AVG(id2003_dep_11.DepDelay));
Delay_dep_2003_12 = foreach group_dep_2003_12 generate (AVG(id2003_dep_12.DepDelay));
Delay_dep_2003_13 = foreach group_dep_2003_13 generate (AVG(id2003_dep_13.DepDelay));
Delay_dep_2003_14 = foreach group_dep_2003_14 generate (AVG(id2003_dep_14.DepDelay));
Delay_dep_2003_15 = foreach group_dep_2003_15 generate (AVG(id2003_dep_15.DepDelay));
Delay_dep_2003_16 = foreach group_dep_2003_16 generate (AVG(id2003_dep_16.DepDelay));
Delay_dep_2003_17 = foreach group_dep_2003_17 generate (AVG(id2003_dep_17.DepDelay));
Delay_dep_2003_18 = foreach group_dep_2003_18 generate (AVG(id2003_dep_18.DepDelay));
Delay_dep_2003_19 = foreach group_dep_2003_19 generate (AVG(id2003_dep_19.DepDelay));
Delay_dep_2003_20 = foreach group_dep_2003_20 generate (AVG(id2003_dep_20.DepDelay));
Delay_dep_2003_21 = foreach group_dep_2003_21 generate (AVG(id2003_dep_21.DepDelay));
Delay_dep_2003_22 = foreach group_dep_2003_22 generate (AVG(id2003_dep_22.DepDelay));
Delay_dep_2003_23 = foreach group_dep_2003_23 generate (AVG(id2003_dep_23.DepDelay));
Union2003 = UNION Delay_dep_2003_0,Delay_dep_2003_1,Delay_dep_2003_2,Delay_dep_2003_3,Delay_dep_2003_4,Delay_dep_2003_5,Delay_dep_2003_6,Delay_dep_2003_7,Delay_dep_2003_8,Delay_dep_2003_9,Delay_dep_2003_10,Delay_dep_2003_11,Delay_dep_2003_12,Delay_dep_2003_13,Delay_dep_2003_14,Delay_dep_2003_15,Delay_dep_2003_16,Delay_dep_2003_17,Delay_dep_2003_18,Delay_dep_2003_19,Delay_dep_2003_20,Delay_dep_2003_21,Delay_dep_2003_22,Delay_dep_2003_23;
STORE Union2003 INTO '/user/s31wcp55/q3/2003/dep' USING PigStorage (',');


id2004 = LOAD 'airflight/2004.csv' USING PigStorage(',') AS (
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
id2004_arr_0 = filter id2004 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2004_arr_1 = filter id2004 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2004_arr_2 = filter id2004 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2004_arr_3 = filter id2004 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2004_arr_4 = filter id2004 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2004_arr_5 = filter id2004 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2004_arr_6 = filter id2004 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2004_arr_7 = filter id2004 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2004_arr_8 = filter id2004 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2004_arr_9 = filter id2004 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2004_arr_10 = filter id2004 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2004_arr_11 = filter id2004 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2004_arr_12 = filter id2004 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2004_arr_13 = filter id2004 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2004_arr_14 = filter id2004 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2004_arr_15 = filter id2004 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2004_arr_16 = filter id2004 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2004_arr_17 = filter id2004 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2004_arr_18 = filter id2004 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2004_arr_19 = filter id2004 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2004_arr_20 = filter id2004 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2004_arr_21 = filter id2004 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2004_arr_22 = filter id2004 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2004_arr_23 = filter id2004 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2004_0 = group id2004_arr_0 all;
group_arr_2004_1 = group id2004_arr_1 all;
group_arr_2004_2 = group id2004_arr_2 all;
group_arr_2004_3 = group id2004_arr_3 all;
group_arr_2004_4 = group id2004_arr_4 all;
group_arr_2004_5 = group id2004_arr_5 all;
group_arr_2004_6 = group id2004_arr_6 all;
group_arr_2004_7 = group id2004_arr_7 all;
group_arr_2004_8 = group id2004_arr_8 all;
group_arr_2004_9 = group id2004_arr_9 all;
group_arr_2004_10 = group id2004_arr_10 all;
group_arr_2004_11 = group id2004_arr_11 all;
group_arr_2004_12 = group id2004_arr_12 all;
group_arr_2004_13 = group id2004_arr_13 all;
group_arr_2004_14 = group id2004_arr_14 all;
group_arr_2004_15 = group id2004_arr_15 all;
group_arr_2004_16 = group id2004_arr_16 all;
group_arr_2004_17 = group id2004_arr_17 all;
group_arr_2004_18 = group id2004_arr_18 all;
group_arr_2004_19 = group id2004_arr_19 all;
group_arr_2004_20 = group id2004_arr_20 all;
group_arr_2004_21 = group id2004_arr_21 all;
group_arr_2004_22 = group id2004_arr_22 all;
group_arr_2004_23 = group id2004_arr_23 all;
Delay_arr_2004_0 = foreach group_arr_2004_0 generate (AVG(id2004_arr_0.ArrDelay));
Delay_arr_2004_1 = foreach group_arr_2004_1 generate (AVG(id2004_arr_1.ArrDelay));
Delay_arr_2004_2 = foreach group_arr_2004_2 generate (AVG(id2004_arr_2.ArrDelay));
Delay_arr_2004_3 = foreach group_arr_2004_3 generate (AVG(id2004_arr_3.ArrDelay));
Delay_arr_2004_4 = foreach group_arr_2004_4 generate (AVG(id2004_arr_4.ArrDelay));
Delay_arr_2004_5 = foreach group_arr_2004_5 generate (AVG(id2004_arr_5.ArrDelay));
Delay_arr_2004_6 = foreach group_arr_2004_6 generate (AVG(id2004_arr_6.ArrDelay));
Delay_arr_2004_7 = foreach group_arr_2004_7 generate (AVG(id2004_arr_7.ArrDelay));
Delay_arr_2004_8 = foreach group_arr_2004_8 generate (AVG(id2004_arr_8.ArrDelay));
Delay_arr_2004_9 = foreach group_arr_2004_9 generate (AVG(id2004_arr_9.ArrDelay));
Delay_arr_2004_10 = foreach group_arr_2004_10 generate (AVG(id2004_arr_10.ArrDelay));
Delay_arr_2004_11 = foreach group_arr_2004_11 generate (AVG(id2004_arr_11.ArrDelay));
Delay_arr_2004_12 = foreach group_arr_2004_12 generate (AVG(id2004_arr_12.ArrDelay));
Delay_arr_2004_13 = foreach group_arr_2004_13 generate (AVG(id2004_arr_13.ArrDelay));
Delay_arr_2004_14 = foreach group_arr_2004_14 generate (AVG(id2004_arr_14.ArrDelay));
Delay_arr_2004_15 = foreach group_arr_2004_15 generate (AVG(id2004_arr_15.ArrDelay));
Delay_arr_2004_16 = foreach group_arr_2004_16 generate (AVG(id2004_arr_16.ArrDelay));
Delay_arr_2004_17 = foreach group_arr_2004_17 generate (AVG(id2004_arr_17.ArrDelay));
Delay_arr_2004_18 = foreach group_arr_2004_18 generate (AVG(id2004_arr_18.ArrDelay));
Delay_arr_2004_19 = foreach group_arr_2004_19 generate (AVG(id2004_arr_19.ArrDelay));
Delay_arr_2004_20 = foreach group_arr_2004_20 generate (AVG(id2004_arr_20.ArrDelay));
Delay_arr_2004_21 = foreach group_arr_2004_21 generate (AVG(id2004_arr_21.ArrDelay));
Delay_arr_2004_22 = foreach group_arr_2004_22 generate (AVG(id2004_arr_22.ArrDelay));
Delay_arr_2004_23 = foreach group_arr_2004_23 generate (AVG(id2004_arr_23.ArrDelay));
Union2004 = UNION Delay_arr_2004_0,Delay_arr_2004_1,Delay_arr_2004_2,Delay_arr_2004_3,Delay_arr_2004_4,Delay_arr_2004_5,Delay_arr_2004_6,Delay_arr_2004_7,Delay_arr_2004_8,Delay_arr_2004_9,Delay_arr_2004_10,Delay_arr_2004_11,Delay_arr_2004_12,Delay_arr_2004_13,Delay_arr_2004_14,Delay_arr_2004_15,Delay_arr_2004_16,Delay_arr_2004_17,Delay_arr_2004_18,Delay_arr_2004_19,Delay_arr_2004_20,Delay_arr_2004_21,Delay_arr_2004_22,Delay_arr_2004_23;
STORE Union2004 INTO '/user/s31wcp55/q3/2004/arr' USING PigStorage (',');
id2004_dep_0 = filter id2004 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2004_dep_1 = filter id2004 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2004_dep_2 = filter id2004 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2004_dep_3 = filter id2004 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2004_dep_4 = filter id2004 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2004_dep_5 = filter id2004 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2004_dep_6 = filter id2004 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2004_dep_7 = filter id2004 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2004_dep_8 = filter id2004 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2004_dep_9 = filter id2004 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2004_dep_10 = filter id2004 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2004_dep_11 = filter id2004 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2004_dep_12 = filter id2004 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2004_dep_13 = filter id2004 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2004_dep_14 = filter id2004 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2004_dep_15 = filter id2004 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2004_dep_16 = filter id2004 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2004_dep_17 = filter id2004 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2004_dep_18 = filter id2004 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2004_dep_19 = filter id2004 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2004_dep_20 = filter id2004 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2004_dep_21 = filter id2004 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2004_dep_22 = filter id2004 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2004_dep_23 = filter id2004 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2004_0 = group id2004_dep_0 all;
group_dep_2004_1 = group id2004_dep_1 all;
group_dep_2004_2 = group id2004_dep_2 all;
group_dep_2004_3 = group id2004_dep_3 all;
group_dep_2004_4 = group id2004_dep_4 all;
group_dep_2004_5 = group id2004_dep_5 all;
group_dep_2004_6 = group id2004_dep_6 all;
group_dep_2004_7 = group id2004_dep_7 all;
group_dep_2004_8 = group id2004_dep_8 all;
group_dep_2004_9 = group id2004_dep_9 all;
group_dep_2004_10 = group id2004_dep_10 all;
group_dep_2004_11 = group id2004_dep_11 all;
group_dep_2004_12 = group id2004_dep_12 all;
group_dep_2004_13 = group id2004_dep_13 all;
group_dep_2004_14 = group id2004_dep_14 all;
group_dep_2004_15 = group id2004_dep_15 all;
group_dep_2004_16 = group id2004_dep_16 all;
group_dep_2004_17 = group id2004_dep_17 all;
group_dep_2004_18 = group id2004_dep_18 all;
group_dep_2004_19 = group id2004_dep_19 all;
group_dep_2004_20 = group id2004_dep_20 all;
group_dep_2004_21 = group id2004_dep_21 all;
group_dep_2004_22 = group id2004_dep_22 all;
group_dep_2004_23 = group id2004_dep_23 all;
Delay_dep_2004_0 = foreach group_dep_2004_0 generate (AVG(id2004_dep_0.DepDelay));
Delay_dep_2004_1 = foreach group_dep_2004_1 generate (AVG(id2004_dep_1.DepDelay));
Delay_dep_2004_2 = foreach group_dep_2004_2 generate (AVG(id2004_dep_2.DepDelay));
Delay_dep_2004_3 = foreach group_dep_2004_3 generate (AVG(id2004_dep_3.DepDelay));
Delay_dep_2004_4 = foreach group_dep_2004_4 generate (AVG(id2004_dep_4.DepDelay));
Delay_dep_2004_5 = foreach group_dep_2004_5 generate (AVG(id2004_dep_5.DepDelay));
Delay_dep_2004_6 = foreach group_dep_2004_6 generate (AVG(id2004_dep_6.DepDelay));
Delay_dep_2004_7 = foreach group_dep_2004_7 generate (AVG(id2004_dep_7.DepDelay));
Delay_dep_2004_8 = foreach group_dep_2004_8 generate (AVG(id2004_dep_8.DepDelay));
Delay_dep_2004_9 = foreach group_dep_2004_9 generate (AVG(id2004_dep_9.DepDelay));
Delay_dep_2004_10 = foreach group_dep_2004_10 generate (AVG(id2004_dep_10.DepDelay));
Delay_dep_2004_11 = foreach group_dep_2004_11 generate (AVG(id2004_dep_11.DepDelay));
Delay_dep_2004_12 = foreach group_dep_2004_12 generate (AVG(id2004_dep_12.DepDelay));
Delay_dep_2004_13 = foreach group_dep_2004_13 generate (AVG(id2004_dep_13.DepDelay));
Delay_dep_2004_14 = foreach group_dep_2004_14 generate (AVG(id2004_dep_14.DepDelay));
Delay_dep_2004_15 = foreach group_dep_2004_15 generate (AVG(id2004_dep_15.DepDelay));
Delay_dep_2004_16 = foreach group_dep_2004_16 generate (AVG(id2004_dep_16.DepDelay));
Delay_dep_2004_17 = foreach group_dep_2004_17 generate (AVG(id2004_dep_17.DepDelay));
Delay_dep_2004_18 = foreach group_dep_2004_18 generate (AVG(id2004_dep_18.DepDelay));
Delay_dep_2004_19 = foreach group_dep_2004_19 generate (AVG(id2004_dep_19.DepDelay));
Delay_dep_2004_20 = foreach group_dep_2004_20 generate (AVG(id2004_dep_20.DepDelay));
Delay_dep_2004_21 = foreach group_dep_2004_21 generate (AVG(id2004_dep_21.DepDelay));
Delay_dep_2004_22 = foreach group_dep_2004_22 generate (AVG(id2004_dep_22.DepDelay));
Delay_dep_2004_23 = foreach group_dep_2004_23 generate (AVG(id2004_dep_23.DepDelay));
Union2004 = UNION Delay_dep_2004_0,Delay_dep_2004_1,Delay_dep_2004_2,Delay_dep_2004_3,Delay_dep_2004_4,Delay_dep_2004_5,Delay_dep_2004_6,Delay_dep_2004_7,Delay_dep_2004_8,Delay_dep_2004_9,Delay_dep_2004_10,Delay_dep_2004_11,Delay_dep_2004_12,Delay_dep_2004_13,Delay_dep_2004_14,Delay_dep_2004_15,Delay_dep_2004_16,Delay_dep_2004_17,Delay_dep_2004_18,Delay_dep_2004_19,Delay_dep_2004_20,Delay_dep_2004_21,Delay_dep_2004_22,Delay_dep_2004_23;
STORE Union2004 INTO '/user/s31wcp55/q3/2004/dep' USING PigStorage (',');


id2005 = LOAD 'airflight/2005.csv' USING PigStorage(',') AS (
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
id2005_arr_0 = filter id2005 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2005_arr_1 = filter id2005 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2005_arr_2 = filter id2005 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2005_arr_3 = filter id2005 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2005_arr_4 = filter id2005 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2005_arr_5 = filter id2005 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2005_arr_6 = filter id2005 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2005_arr_7 = filter id2005 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2005_arr_8 = filter id2005 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2005_arr_9 = filter id2005 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2005_arr_10 = filter id2005 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2005_arr_11 = filter id2005 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2005_arr_12 = filter id2005 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2005_arr_13 = filter id2005 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2005_arr_14 = filter id2005 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2005_arr_15 = filter id2005 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2005_arr_16 = filter id2005 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2005_arr_17 = filter id2005 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2005_arr_18 = filter id2005 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2005_arr_19 = filter id2005 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2005_arr_20 = filter id2005 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2005_arr_21 = filter id2005 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2005_arr_22 = filter id2005 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2005_arr_23 = filter id2005 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2005_0 = group id2005_arr_0 all;
group_arr_2005_1 = group id2005_arr_1 all;
group_arr_2005_2 = group id2005_arr_2 all;
group_arr_2005_3 = group id2005_arr_3 all;
group_arr_2005_4 = group id2005_arr_4 all;
group_arr_2005_5 = group id2005_arr_5 all;
group_arr_2005_6 = group id2005_arr_6 all;
group_arr_2005_7 = group id2005_arr_7 all;
group_arr_2005_8 = group id2005_arr_8 all;
group_arr_2005_9 = group id2005_arr_9 all;
group_arr_2005_10 = group id2005_arr_10 all;
group_arr_2005_11 = group id2005_arr_11 all;
group_arr_2005_12 = group id2005_arr_12 all;
group_arr_2005_13 = group id2005_arr_13 all;
group_arr_2005_14 = group id2005_arr_14 all;
group_arr_2005_15 = group id2005_arr_15 all;
group_arr_2005_16 = group id2005_arr_16 all;
group_arr_2005_17 = group id2005_arr_17 all;
group_arr_2005_18 = group id2005_arr_18 all;
group_arr_2005_19 = group id2005_arr_19 all;
group_arr_2005_20 = group id2005_arr_20 all;
group_arr_2005_21 = group id2005_arr_21 all;
group_arr_2005_22 = group id2005_arr_22 all;
group_arr_2005_23 = group id2005_arr_23 all;
Delay_arr_2005_0 = foreach group_arr_2005_0 generate (AVG(id2005_arr_0.ArrDelay));
Delay_arr_2005_1 = foreach group_arr_2005_1 generate (AVG(id2005_arr_1.ArrDelay));
Delay_arr_2005_2 = foreach group_arr_2005_2 generate (AVG(id2005_arr_2.ArrDelay));
Delay_arr_2005_3 = foreach group_arr_2005_3 generate (AVG(id2005_arr_3.ArrDelay));
Delay_arr_2005_4 = foreach group_arr_2005_4 generate (AVG(id2005_arr_4.ArrDelay));
Delay_arr_2005_5 = foreach group_arr_2005_5 generate (AVG(id2005_arr_5.ArrDelay));
Delay_arr_2005_6 = foreach group_arr_2005_6 generate (AVG(id2005_arr_6.ArrDelay));
Delay_arr_2005_7 = foreach group_arr_2005_7 generate (AVG(id2005_arr_7.ArrDelay));
Delay_arr_2005_8 = foreach group_arr_2005_8 generate (AVG(id2005_arr_8.ArrDelay));
Delay_arr_2005_9 = foreach group_arr_2005_9 generate (AVG(id2005_arr_9.ArrDelay));
Delay_arr_2005_10 = foreach group_arr_2005_10 generate (AVG(id2005_arr_10.ArrDelay));
Delay_arr_2005_11 = foreach group_arr_2005_11 generate (AVG(id2005_arr_11.ArrDelay));
Delay_arr_2005_12 = foreach group_arr_2005_12 generate (AVG(id2005_arr_12.ArrDelay));
Delay_arr_2005_13 = foreach group_arr_2005_13 generate (AVG(id2005_arr_13.ArrDelay));
Delay_arr_2005_14 = foreach group_arr_2005_14 generate (AVG(id2005_arr_14.ArrDelay));
Delay_arr_2005_15 = foreach group_arr_2005_15 generate (AVG(id2005_arr_15.ArrDelay));
Delay_arr_2005_16 = foreach group_arr_2005_16 generate (AVG(id2005_arr_16.ArrDelay));
Delay_arr_2005_17 = foreach group_arr_2005_17 generate (AVG(id2005_arr_17.ArrDelay));
Delay_arr_2005_18 = foreach group_arr_2005_18 generate (AVG(id2005_arr_18.ArrDelay));
Delay_arr_2005_19 = foreach group_arr_2005_19 generate (AVG(id2005_arr_19.ArrDelay));
Delay_arr_2005_20 = foreach group_arr_2005_20 generate (AVG(id2005_arr_20.ArrDelay));
Delay_arr_2005_21 = foreach group_arr_2005_21 generate (AVG(id2005_arr_21.ArrDelay));
Delay_arr_2005_22 = foreach group_arr_2005_22 generate (AVG(id2005_arr_22.ArrDelay));
Delay_arr_2005_23 = foreach group_arr_2005_23 generate (AVG(id2005_arr_23.ArrDelay));
Union2005 = UNION Delay_arr_2005_0,Delay_arr_2005_1,Delay_arr_2005_2,Delay_arr_2005_3,Delay_arr_2005_4,Delay_arr_2005_5,Delay_arr_2005_6,Delay_arr_2005_7,Delay_arr_2005_8,Delay_arr_2005_9,Delay_arr_2005_10,Delay_arr_2005_11,Delay_arr_2005_12,Delay_arr_2005_13,Delay_arr_2005_14,Delay_arr_2005_15,Delay_arr_2005_16,Delay_arr_2005_17,Delay_arr_2005_18,Delay_arr_2005_19,Delay_arr_2005_20,Delay_arr_2005_21,Delay_arr_2005_22,Delay_arr_2005_23;
STORE Union2005 INTO '/user/s31wcp55/q3/2005/arr' USING PigStorage (',');
id2005_dep_0 = filter id2005 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2005_dep_1 = filter id2005 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2005_dep_2 = filter id2005 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2005_dep_3 = filter id2005 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2005_dep_4 = filter id2005 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2005_dep_5 = filter id2005 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2005_dep_6 = filter id2005 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2005_dep_7 = filter id2005 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2005_dep_8 = filter id2005 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2005_dep_9 = filter id2005 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2005_dep_10 = filter id2005 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2005_dep_11 = filter id2005 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2005_dep_12 = filter id2005 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2005_dep_13 = filter id2005 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2005_dep_14 = filter id2005 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2005_dep_15 = filter id2005 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2005_dep_16 = filter id2005 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2005_dep_17 = filter id2005 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2005_dep_18 = filter id2005 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2005_dep_19 = filter id2005 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2005_dep_20 = filter id2005 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2005_dep_21 = filter id2005 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2005_dep_22 = filter id2005 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2005_dep_23 = filter id2005 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2005_0 = group id2005_dep_0 all;
group_dep_2005_1 = group id2005_dep_1 all;
group_dep_2005_2 = group id2005_dep_2 all;
group_dep_2005_3 = group id2005_dep_3 all;
group_dep_2005_4 = group id2005_dep_4 all;
group_dep_2005_5 = group id2005_dep_5 all;
group_dep_2005_6 = group id2005_dep_6 all;
group_dep_2005_7 = group id2005_dep_7 all;
group_dep_2005_8 = group id2005_dep_8 all;
group_dep_2005_9 = group id2005_dep_9 all;
group_dep_2005_10 = group id2005_dep_10 all;
group_dep_2005_11 = group id2005_dep_11 all;
group_dep_2005_12 = group id2005_dep_12 all;
group_dep_2005_13 = group id2005_dep_13 all;
group_dep_2005_14 = group id2005_dep_14 all;
group_dep_2005_15 = group id2005_dep_15 all;
group_dep_2005_16 = group id2005_dep_16 all;
group_dep_2005_17 = group id2005_dep_17 all;
group_dep_2005_18 = group id2005_dep_18 all;
group_dep_2005_19 = group id2005_dep_19 all;
group_dep_2005_20 = group id2005_dep_20 all;
group_dep_2005_21 = group id2005_dep_21 all;
group_dep_2005_22 = group id2005_dep_22 all;
group_dep_2005_23 = group id2005_dep_23 all;
Delay_dep_2005_0 = foreach group_dep_2005_0 generate (AVG(id2005_dep_0.DepDelay));
Delay_dep_2005_1 = foreach group_dep_2005_1 generate (AVG(id2005_dep_1.DepDelay));
Delay_dep_2005_2 = foreach group_dep_2005_2 generate (AVG(id2005_dep_2.DepDelay));
Delay_dep_2005_3 = foreach group_dep_2005_3 generate (AVG(id2005_dep_3.DepDelay));
Delay_dep_2005_4 = foreach group_dep_2005_4 generate (AVG(id2005_dep_4.DepDelay));
Delay_dep_2005_5 = foreach group_dep_2005_5 generate (AVG(id2005_dep_5.DepDelay));
Delay_dep_2005_6 = foreach group_dep_2005_6 generate (AVG(id2005_dep_6.DepDelay));
Delay_dep_2005_7 = foreach group_dep_2005_7 generate (AVG(id2005_dep_7.DepDelay));
Delay_dep_2005_8 = foreach group_dep_2005_8 generate (AVG(id2005_dep_8.DepDelay));
Delay_dep_2005_9 = foreach group_dep_2005_9 generate (AVG(id2005_dep_9.DepDelay));
Delay_dep_2005_10 = foreach group_dep_2005_10 generate (AVG(id2005_dep_10.DepDelay));
Delay_dep_2005_11 = foreach group_dep_2005_11 generate (AVG(id2005_dep_11.DepDelay));
Delay_dep_2005_12 = foreach group_dep_2005_12 generate (AVG(id2005_dep_12.DepDelay));
Delay_dep_2005_13 = foreach group_dep_2005_13 generate (AVG(id2005_dep_13.DepDelay));
Delay_dep_2005_14 = foreach group_dep_2005_14 generate (AVG(id2005_dep_14.DepDelay));
Delay_dep_2005_15 = foreach group_dep_2005_15 generate (AVG(id2005_dep_15.DepDelay));
Delay_dep_2005_16 = foreach group_dep_2005_16 generate (AVG(id2005_dep_16.DepDelay));
Delay_dep_2005_17 = foreach group_dep_2005_17 generate (AVG(id2005_dep_17.DepDelay));
Delay_dep_2005_18 = foreach group_dep_2005_18 generate (AVG(id2005_dep_18.DepDelay));
Delay_dep_2005_19 = foreach group_dep_2005_19 generate (AVG(id2005_dep_19.DepDelay));
Delay_dep_2005_20 = foreach group_dep_2005_20 generate (AVG(id2005_dep_20.DepDelay));
Delay_dep_2005_21 = foreach group_dep_2005_21 generate (AVG(id2005_dep_21.DepDelay));
Delay_dep_2005_22 = foreach group_dep_2005_22 generate (AVG(id2005_dep_22.DepDelay));
Delay_dep_2005_23 = foreach group_dep_2005_23 generate (AVG(id2005_dep_23.DepDelay));
Union2005 = UNION Delay_dep_2005_0,Delay_dep_2005_1,Delay_dep_2005_2,Delay_dep_2005_3,Delay_dep_2005_4,Delay_dep_2005_5,Delay_dep_2005_6,Delay_dep_2005_7,Delay_dep_2005_8,Delay_dep_2005_9,Delay_dep_2005_10,Delay_dep_2005_11,Delay_dep_2005_12,Delay_dep_2005_13,Delay_dep_2005_14,Delay_dep_2005_15,Delay_dep_2005_16,Delay_dep_2005_17,Delay_dep_2005_18,Delay_dep_2005_19,Delay_dep_2005_20,Delay_dep_2005_21,Delay_dep_2005_22,Delay_dep_2005_23;
STORE Union2005 INTO '/user/s31wcp55/q3/2005/dep' USING PigStorage (',');


id2006 = LOAD 'airflight/2006.csv' USING PigStorage(',') AS (
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
id2006_arr_0 = filter id2006 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2006_arr_1 = filter id2006 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2006_arr_2 = filter id2006 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2006_arr_3 = filter id2006 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2006_arr_4 = filter id2006 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2006_arr_5 = filter id2006 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2006_arr_6 = filter id2006 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2006_arr_7 = filter id2006 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2006_arr_8 = filter id2006 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2006_arr_9 = filter id2006 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2006_arr_10 = filter id2006 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2006_arr_11 = filter id2006 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2006_arr_12 = filter id2006 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2006_arr_13 = filter id2006 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2006_arr_14 = filter id2006 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2006_arr_15 = filter id2006 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2006_arr_16 = filter id2006 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2006_arr_17 = filter id2006 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2006_arr_18 = filter id2006 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2006_arr_19 = filter id2006 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2006_arr_20 = filter id2006 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2006_arr_21 = filter id2006 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2006_arr_22 = filter id2006 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2006_arr_23 = filter id2006 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2006_0 = group id2006_arr_0 all;
group_arr_2006_1 = group id2006_arr_1 all;
group_arr_2006_2 = group id2006_arr_2 all;
group_arr_2006_3 = group id2006_arr_3 all;
group_arr_2006_4 = group id2006_arr_4 all;
group_arr_2006_5 = group id2006_arr_5 all;
group_arr_2006_6 = group id2006_arr_6 all;
group_arr_2006_7 = group id2006_arr_7 all;
group_arr_2006_8 = group id2006_arr_8 all;
group_arr_2006_9 = group id2006_arr_9 all;
group_arr_2006_10 = group id2006_arr_10 all;
group_arr_2006_11 = group id2006_arr_11 all;
group_arr_2006_12 = group id2006_arr_12 all;
group_arr_2006_13 = group id2006_arr_13 all;
group_arr_2006_14 = group id2006_arr_14 all;
group_arr_2006_15 = group id2006_arr_15 all;
group_arr_2006_16 = group id2006_arr_16 all;
group_arr_2006_17 = group id2006_arr_17 all;
group_arr_2006_18 = group id2006_arr_18 all;
group_arr_2006_19 = group id2006_arr_19 all;
group_arr_2006_20 = group id2006_arr_20 all;
group_arr_2006_21 = group id2006_arr_21 all;
group_arr_2006_22 = group id2006_arr_22 all;
group_arr_2006_23 = group id2006_arr_23 all;
Delay_arr_2006_0 = foreach group_arr_2006_0 generate (AVG(id2006_arr_0.ArrDelay));
Delay_arr_2006_1 = foreach group_arr_2006_1 generate (AVG(id2006_arr_1.ArrDelay));
Delay_arr_2006_2 = foreach group_arr_2006_2 generate (AVG(id2006_arr_2.ArrDelay));
Delay_arr_2006_3 = foreach group_arr_2006_3 generate (AVG(id2006_arr_3.ArrDelay));
Delay_arr_2006_4 = foreach group_arr_2006_4 generate (AVG(id2006_arr_4.ArrDelay));
Delay_arr_2006_5 = foreach group_arr_2006_5 generate (AVG(id2006_arr_5.ArrDelay));
Delay_arr_2006_6 = foreach group_arr_2006_6 generate (AVG(id2006_arr_6.ArrDelay));
Delay_arr_2006_7 = foreach group_arr_2006_7 generate (AVG(id2006_arr_7.ArrDelay));
Delay_arr_2006_8 = foreach group_arr_2006_8 generate (AVG(id2006_arr_8.ArrDelay));
Delay_arr_2006_9 = foreach group_arr_2006_9 generate (AVG(id2006_arr_9.ArrDelay));
Delay_arr_2006_10 = foreach group_arr_2006_10 generate (AVG(id2006_arr_10.ArrDelay));
Delay_arr_2006_11 = foreach group_arr_2006_11 generate (AVG(id2006_arr_11.ArrDelay));
Delay_arr_2006_12 = foreach group_arr_2006_12 generate (AVG(id2006_arr_12.ArrDelay));
Delay_arr_2006_13 = foreach group_arr_2006_13 generate (AVG(id2006_arr_13.ArrDelay));
Delay_arr_2006_14 = foreach group_arr_2006_14 generate (AVG(id2006_arr_14.ArrDelay));
Delay_arr_2006_15 = foreach group_arr_2006_15 generate (AVG(id2006_arr_15.ArrDelay));
Delay_arr_2006_16 = foreach group_arr_2006_16 generate (AVG(id2006_arr_16.ArrDelay));
Delay_arr_2006_17 = foreach group_arr_2006_17 generate (AVG(id2006_arr_17.ArrDelay));
Delay_arr_2006_18 = foreach group_arr_2006_18 generate (AVG(id2006_arr_18.ArrDelay));
Delay_arr_2006_19 = foreach group_arr_2006_19 generate (AVG(id2006_arr_19.ArrDelay));
Delay_arr_2006_20 = foreach group_arr_2006_20 generate (AVG(id2006_arr_20.ArrDelay));
Delay_arr_2006_21 = foreach group_arr_2006_21 generate (AVG(id2006_arr_21.ArrDelay));
Delay_arr_2006_22 = foreach group_arr_2006_22 generate (AVG(id2006_arr_22.ArrDelay));
Delay_arr_2006_23 = foreach group_arr_2006_23 generate (AVG(id2006_arr_23.ArrDelay));
Union2006 = UNION Delay_arr_2006_0,Delay_arr_2006_1,Delay_arr_2006_2,Delay_arr_2006_3,Delay_arr_2006_4,Delay_arr_2006_5,Delay_arr_2006_6,Delay_arr_2006_7,Delay_arr_2006_8,Delay_arr_2006_9,Delay_arr_2006_10,Delay_arr_2006_11,Delay_arr_2006_12,Delay_arr_2006_13,Delay_arr_2006_14,Delay_arr_2006_15,Delay_arr_2006_16,Delay_arr_2006_17,Delay_arr_2006_18,Delay_arr_2006_19,Delay_arr_2006_20,Delay_arr_2006_21,Delay_arr_2006_22,Delay_arr_2006_23;
STORE Union2006 INTO '/user/s31wcp55/q3/2006/arr' USING PigStorage (',');
id2006_dep_0 = filter id2006 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2006_dep_1 = filter id2006 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2006_dep_2 = filter id2006 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2006_dep_3 = filter id2006 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2006_dep_4 = filter id2006 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2006_dep_5 = filter id2006 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2006_dep_6 = filter id2006 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2006_dep_7 = filter id2006 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2006_dep_8 = filter id2006 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2006_dep_9 = filter id2006 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2006_dep_10 = filter id2006 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2006_dep_11 = filter id2006 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2006_dep_12 = filter id2006 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2006_dep_13 = filter id2006 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2006_dep_14 = filter id2006 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2006_dep_15 = filter id2006 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2006_dep_16 = filter id2006 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2006_dep_17 = filter id2006 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2006_dep_18 = filter id2006 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2006_dep_19 = filter id2006 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2006_dep_20 = filter id2006 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2006_dep_21 = filter id2006 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2006_dep_22 = filter id2006 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2006_dep_23 = filter id2006 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2006_0 = group id2006_dep_0 all;
group_dep_2006_1 = group id2006_dep_1 all;
group_dep_2006_2 = group id2006_dep_2 all;
group_dep_2006_3 = group id2006_dep_3 all;
group_dep_2006_4 = group id2006_dep_4 all;
group_dep_2006_5 = group id2006_dep_5 all;
group_dep_2006_6 = group id2006_dep_6 all;
group_dep_2006_7 = group id2006_dep_7 all;
group_dep_2006_8 = group id2006_dep_8 all;
group_dep_2006_9 = group id2006_dep_9 all;
group_dep_2006_10 = group id2006_dep_10 all;
group_dep_2006_11 = group id2006_dep_11 all;
group_dep_2006_12 = group id2006_dep_12 all;
group_dep_2006_13 = group id2006_dep_13 all;
group_dep_2006_14 = group id2006_dep_14 all;
group_dep_2006_15 = group id2006_dep_15 all;
group_dep_2006_16 = group id2006_dep_16 all;
group_dep_2006_17 = group id2006_dep_17 all;
group_dep_2006_18 = group id2006_dep_18 all;
group_dep_2006_19 = group id2006_dep_19 all;
group_dep_2006_20 = group id2006_dep_20 all;
group_dep_2006_21 = group id2006_dep_21 all;
group_dep_2006_22 = group id2006_dep_22 all;
group_dep_2006_23 = group id2006_dep_23 all;
Delay_dep_2006_0 = foreach group_dep_2006_0 generate (AVG(id2006_dep_0.DepDelay));
Delay_dep_2006_1 = foreach group_dep_2006_1 generate (AVG(id2006_dep_1.DepDelay));
Delay_dep_2006_2 = foreach group_dep_2006_2 generate (AVG(id2006_dep_2.DepDelay));
Delay_dep_2006_3 = foreach group_dep_2006_3 generate (AVG(id2006_dep_3.DepDelay));
Delay_dep_2006_4 = foreach group_dep_2006_4 generate (AVG(id2006_dep_4.DepDelay));
Delay_dep_2006_5 = foreach group_dep_2006_5 generate (AVG(id2006_dep_5.DepDelay));
Delay_dep_2006_6 = foreach group_dep_2006_6 generate (AVG(id2006_dep_6.DepDelay));
Delay_dep_2006_7 = foreach group_dep_2006_7 generate (AVG(id2006_dep_7.DepDelay));
Delay_dep_2006_8 = foreach group_dep_2006_8 generate (AVG(id2006_dep_8.DepDelay));
Delay_dep_2006_9 = foreach group_dep_2006_9 generate (AVG(id2006_dep_9.DepDelay));
Delay_dep_2006_10 = foreach group_dep_2006_10 generate (AVG(id2006_dep_10.DepDelay));
Delay_dep_2006_11 = foreach group_dep_2006_11 generate (AVG(id2006_dep_11.DepDelay));
Delay_dep_2006_12 = foreach group_dep_2006_12 generate (AVG(id2006_dep_12.DepDelay));
Delay_dep_2006_13 = foreach group_dep_2006_13 generate (AVG(id2006_dep_13.DepDelay));
Delay_dep_2006_14 = foreach group_dep_2006_14 generate (AVG(id2006_dep_14.DepDelay));
Delay_dep_2006_15 = foreach group_dep_2006_15 generate (AVG(id2006_dep_15.DepDelay));
Delay_dep_2006_16 = foreach group_dep_2006_16 generate (AVG(id2006_dep_16.DepDelay));
Delay_dep_2006_17 = foreach group_dep_2006_17 generate (AVG(id2006_dep_17.DepDelay));
Delay_dep_2006_18 = foreach group_dep_2006_18 generate (AVG(id2006_dep_18.DepDelay));
Delay_dep_2006_19 = foreach group_dep_2006_19 generate (AVG(id2006_dep_19.DepDelay));
Delay_dep_2006_20 = foreach group_dep_2006_20 generate (AVG(id2006_dep_20.DepDelay));
Delay_dep_2006_21 = foreach group_dep_2006_21 generate (AVG(id2006_dep_21.DepDelay));
Delay_dep_2006_22 = foreach group_dep_2006_22 generate (AVG(id2006_dep_22.DepDelay));
Delay_dep_2006_23 = foreach group_dep_2006_23 generate (AVG(id2006_dep_23.DepDelay));
Union2006 = UNION Delay_dep_2006_0,Delay_dep_2006_1,Delay_dep_2006_2,Delay_dep_2006_3,Delay_dep_2006_4,Delay_dep_2006_5,Delay_dep_2006_6,Delay_dep_2006_7,Delay_dep_2006_8,Delay_dep_2006_9,Delay_dep_2006_10,Delay_dep_2006_11,Delay_dep_2006_12,Delay_dep_2006_13,Delay_dep_2006_14,Delay_dep_2006_15,Delay_dep_2006_16,Delay_dep_2006_17,Delay_dep_2006_18,Delay_dep_2006_19,Delay_dep_2006_20,Delay_dep_2006_21,Delay_dep_2006_22,Delay_dep_2006_23;
STORE Union2006 INTO '/user/s31wcp55/q3/2006/dep' USING PigStorage (',');


id2007 = LOAD 'airflight/2007.csv' USING PigStorage(',') AS (
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
id2007_arr_0 = filter id2007 by (CRSArrTime>=0) AND (CRSArrTime<100);
id2007_arr_1 = filter id2007 by (CRSArrTime>=100) AND (CRSArrTime<200);
id2007_arr_2 = filter id2007 by (CRSArrTime>=200) AND (CRSArrTime<300);
id2007_arr_3 = filter id2007 by (CRSArrTime>=300) AND (CRSArrTime<400);
id2007_arr_4 = filter id2007 by (CRSArrTime>=400) AND (CRSArrTime<500);
id2007_arr_5 = filter id2007 by (CRSArrTime>=500) AND (CRSArrTime<600);
id2007_arr_6 = filter id2007 by (CRSArrTime>=600) AND (CRSArrTime<700);
id2007_arr_7 = filter id2007 by (CRSArrTime>=700) AND (CRSArrTime<800);
id2007_arr_8 = filter id2007 by (CRSArrTime>=800) AND (CRSArrTime<900);
id2007_arr_9 = filter id2007 by (CRSArrTime>=900) AND (CRSArrTime<1000);
id2007_arr_10 = filter id2007 by (CRSArrTime>=1000) AND (CRSArrTime<1100);
id2007_arr_11 = filter id2007 by (CRSArrTime>=1100) AND (CRSArrTime<1200);
id2007_arr_12 = filter id2007 by (CRSArrTime>=1200) AND (CRSArrTime<1300);
id2007_arr_13 = filter id2007 by (CRSArrTime>=1300) AND (CRSArrTime<1400);
id2007_arr_14 = filter id2007 by (CRSArrTime>=1400) AND (CRSArrTime<1500);
id2007_arr_15 = filter id2007 by (CRSArrTime>=1500) AND (CRSArrTime<1600);
id2007_arr_16 = filter id2007 by (CRSArrTime>=1600) AND (CRSArrTime<1700);
id2007_arr_17 = filter id2007 by (CRSArrTime>=1700) AND (CRSArrTime<1800);
id2007_arr_18 = filter id2007 by (CRSArrTime>=1800) AND (CRSArrTime<1900);
id2007_arr_19 = filter id2007 by (CRSArrTime>=1900) AND (CRSArrTime<2000);
id2007_arr_20 = filter id2007 by (CRSArrTime>=2000) AND (CRSArrTime<2100);
id2007_arr_21 = filter id2007 by (CRSArrTime>=2100) AND (CRSArrTime<2200);
id2007_arr_22 = filter id2007 by (CRSArrTime>=2200) AND (CRSArrTime<2300);
id2007_arr_23 = filter id2007 by (CRSArrTime>=2300) AND (CRSArrTime<2400);
group_arr_2007_0 = group id2007_arr_0 all;
group_arr_2007_1 = group id2007_arr_1 all;
group_arr_2007_2 = group id2007_arr_2 all;
group_arr_2007_3 = group id2007_arr_3 all;
group_arr_2007_4 = group id2007_arr_4 all;
group_arr_2007_5 = group id2007_arr_5 all;
group_arr_2007_6 = group id2007_arr_6 all;
group_arr_2007_7 = group id2007_arr_7 all;
group_arr_2007_8 = group id2007_arr_8 all;
group_arr_2007_9 = group id2007_arr_9 all;
group_arr_2007_10 = group id2007_arr_10 all;
group_arr_2007_11 = group id2007_arr_11 all;
group_arr_2007_12 = group id2007_arr_12 all;
group_arr_2007_13 = group id2007_arr_13 all;
group_arr_2007_14 = group id2007_arr_14 all;
group_arr_2007_15 = group id2007_arr_15 all;
group_arr_2007_16 = group id2007_arr_16 all;
group_arr_2007_17 = group id2007_arr_17 all;
group_arr_2007_18 = group id2007_arr_18 all;
group_arr_2007_19 = group id2007_arr_19 all;
group_arr_2007_20 = group id2007_arr_20 all;
group_arr_2007_21 = group id2007_arr_21 all;
group_arr_2007_22 = group id2007_arr_22 all;
group_arr_2007_23 = group id2007_arr_23 all;
Delay_arr_2007_0 = foreach group_arr_2007_0 generate (AVG(id2007_arr_0.ArrDelay));
Delay_arr_2007_1 = foreach group_arr_2007_1 generate (AVG(id2007_arr_1.ArrDelay));
Delay_arr_2007_2 = foreach group_arr_2007_2 generate (AVG(id2007_arr_2.ArrDelay));
Delay_arr_2007_3 = foreach group_arr_2007_3 generate (AVG(id2007_arr_3.ArrDelay));
Delay_arr_2007_4 = foreach group_arr_2007_4 generate (AVG(id2007_arr_4.ArrDelay));
Delay_arr_2007_5 = foreach group_arr_2007_5 generate (AVG(id2007_arr_5.ArrDelay));
Delay_arr_2007_6 = foreach group_arr_2007_6 generate (AVG(id2007_arr_6.ArrDelay));
Delay_arr_2007_7 = foreach group_arr_2007_7 generate (AVG(id2007_arr_7.ArrDelay));
Delay_arr_2007_8 = foreach group_arr_2007_8 generate (AVG(id2007_arr_8.ArrDelay));
Delay_arr_2007_9 = foreach group_arr_2007_9 generate (AVG(id2007_arr_9.ArrDelay));
Delay_arr_2007_10 = foreach group_arr_2007_10 generate (AVG(id2007_arr_10.ArrDelay));
Delay_arr_2007_11 = foreach group_arr_2007_11 generate (AVG(id2007_arr_11.ArrDelay));
Delay_arr_2007_12 = foreach group_arr_2007_12 generate (AVG(id2007_arr_12.ArrDelay));
Delay_arr_2007_13 = foreach group_arr_2007_13 generate (AVG(id2007_arr_13.ArrDelay));
Delay_arr_2007_14 = foreach group_arr_2007_14 generate (AVG(id2007_arr_14.ArrDelay));
Delay_arr_2007_15 = foreach group_arr_2007_15 generate (AVG(id2007_arr_15.ArrDelay));
Delay_arr_2007_16 = foreach group_arr_2007_16 generate (AVG(id2007_arr_16.ArrDelay));
Delay_arr_2007_17 = foreach group_arr_2007_17 generate (AVG(id2007_arr_17.ArrDelay));
Delay_arr_2007_18 = foreach group_arr_2007_18 generate (AVG(id2007_arr_18.ArrDelay));
Delay_arr_2007_19 = foreach group_arr_2007_19 generate (AVG(id2007_arr_19.ArrDelay));
Delay_arr_2007_20 = foreach group_arr_2007_20 generate (AVG(id2007_arr_20.ArrDelay));
Delay_arr_2007_21 = foreach group_arr_2007_21 generate (AVG(id2007_arr_21.ArrDelay));
Delay_arr_2007_22 = foreach group_arr_2007_22 generate (AVG(id2007_arr_22.ArrDelay));
Delay_arr_2007_23 = foreach group_arr_2007_23 generate (AVG(id2007_arr_23.ArrDelay));
Union2007 = UNION Delay_arr_2007_0,Delay_arr_2007_1,Delay_arr_2007_2,Delay_arr_2007_3,Delay_arr_2007_4,Delay_arr_2007_5,Delay_arr_2007_6,Delay_arr_2007_7,Delay_arr_2007_8,Delay_arr_2007_9,Delay_arr_2007_10,Delay_arr_2007_11,Delay_arr_2007_12,Delay_arr_2007_13,Delay_arr_2007_14,Delay_arr_2007_15,Delay_arr_2007_16,Delay_arr_2007_17,Delay_arr_2007_18,Delay_arr_2007_19,Delay_arr_2007_20,Delay_arr_2007_21,Delay_arr_2007_22,Delay_arr_2007_23;
STORE Union2007 INTO '/user/s31wcp55/q3/2007/arr' USING PigStorage (',');
id2007_dep_0 = filter id2007 by (CRSDepTime>=0) AND (CRSDepTime<100);
id2007_dep_1 = filter id2007 by (CRSDepTime>=100) AND (CRSDepTime<200);
id2007_dep_2 = filter id2007 by (CRSDepTime>=200) AND (CRSDepTime<300);
id2007_dep_3 = filter id2007 by (CRSDepTime>=300) AND (CRSDepTime<400);
id2007_dep_4 = filter id2007 by (CRSDepTime>=400) AND (CRSDepTime<500);
id2007_dep_5 = filter id2007 by (CRSDepTime>=500) AND (CRSDepTime<600);
id2007_dep_6 = filter id2007 by (CRSDepTime>=600) AND (CRSDepTime<700);
id2007_dep_7 = filter id2007 by (CRSDepTime>=700) AND (CRSDepTime<800);
id2007_dep_8 = filter id2007 by (CRSDepTime>=800) AND (CRSDepTime<900);
id2007_dep_9 = filter id2007 by (CRSDepTime>=900) AND (CRSDepTime<1000);
id2007_dep_10 = filter id2007 by (CRSDepTime>=1000) AND (CRSDepTime<1100);
id2007_dep_11 = filter id2007 by (CRSDepTime>=1100) AND (CRSDepTime<1200);
id2007_dep_12 = filter id2007 by (CRSDepTime>=1200) AND (CRSDepTime<1300);
id2007_dep_13 = filter id2007 by (CRSDepTime>=1300) AND (CRSDepTime<1400);
id2007_dep_14 = filter id2007 by (CRSDepTime>=1400) AND (CRSDepTime<1500);
id2007_dep_15 = filter id2007 by (CRSDepTime>=1500) AND (CRSDepTime<1600);
id2007_dep_16 = filter id2007 by (CRSDepTime>=1600) AND (CRSDepTime<1700);
id2007_dep_17 = filter id2007 by (CRSDepTime>=1700) AND (CRSDepTime<1800);
id2007_dep_18 = filter id2007 by (CRSDepTime>=1800) AND (CRSDepTime<1900);
id2007_dep_19 = filter id2007 by (CRSDepTime>=1900) AND (CRSDepTime<2000);
id2007_dep_20 = filter id2007 by (CRSDepTime>=2000) AND (CRSDepTime<2100);
id2007_dep_21 = filter id2007 by (CRSDepTime>=2100) AND (CRSDepTime<2200);
id2007_dep_22 = filter id2007 by (CRSDepTime>=2200) AND (CRSDepTime<2300);
id2007_dep_23 = filter id2007 by (CRSDepTime>=2300) AND (CRSDepTime<2400);
group_dep_2007_0 = group id2007_dep_0 all;
group_dep_2007_1 = group id2007_dep_1 all;
group_dep_2007_2 = group id2007_dep_2 all;
group_dep_2007_3 = group id2007_dep_3 all;
group_dep_2007_4 = group id2007_dep_4 all;
group_dep_2007_5 = group id2007_dep_5 all;
group_dep_2007_6 = group id2007_dep_6 all;
group_dep_2007_7 = group id2007_dep_7 all;
group_dep_2007_8 = group id2007_dep_8 all;
group_dep_2007_9 = group id2007_dep_9 all;
group_dep_2007_10 = group id2007_dep_10 all;
group_dep_2007_11 = group id2007_dep_11 all;
group_dep_2007_12 = group id2007_dep_12 all;
group_dep_2007_13 = group id2007_dep_13 all;
group_dep_2007_14 = group id2007_dep_14 all;
group_dep_2007_15 = group id2007_dep_15 all;
group_dep_2007_16 = group id2007_dep_16 all;
group_dep_2007_17 = group id2007_dep_17 all;
group_dep_2007_18 = group id2007_dep_18 all;
group_dep_2007_19 = group id2007_dep_19 all;
group_dep_2007_20 = group id2007_dep_20 all;
group_dep_2007_21 = group id2007_dep_21 all;
group_dep_2007_22 = group id2007_dep_22 all;
group_dep_2007_23 = group id2007_dep_23 all;
Delay_dep_2007_0 = foreach group_dep_2007_0 generate (AVG(id2007_dep_0.DepDelay));
Delay_dep_2007_1 = foreach group_dep_2007_1 generate (AVG(id2007_dep_1.DepDelay));
Delay_dep_2007_2 = foreach group_dep_2007_2 generate (AVG(id2007_dep_2.DepDelay));
Delay_dep_2007_3 = foreach group_dep_2007_3 generate (AVG(id2007_dep_3.DepDelay));
Delay_dep_2007_4 = foreach group_dep_2007_4 generate (AVG(id2007_dep_4.DepDelay));
Delay_dep_2007_5 = foreach group_dep_2007_5 generate (AVG(id2007_dep_5.DepDelay));
Delay_dep_2007_6 = foreach group_dep_2007_6 generate (AVG(id2007_dep_6.DepDelay));
Delay_dep_2007_7 = foreach group_dep_2007_7 generate (AVG(id2007_dep_7.DepDelay));
Delay_dep_2007_8 = foreach group_dep_2007_8 generate (AVG(id2007_dep_8.DepDelay));
Delay_dep_2007_9 = foreach group_dep_2007_9 generate (AVG(id2007_dep_9.DepDelay));
Delay_dep_2007_10 = foreach group_dep_2007_10 generate (AVG(id2007_dep_10.DepDelay));
Delay_dep_2007_11 = foreach group_dep_2007_11 generate (AVG(id2007_dep_11.DepDelay));
Delay_dep_2007_12 = foreach group_dep_2007_12 generate (AVG(id2007_dep_12.DepDelay));
Delay_dep_2007_13 = foreach group_dep_2007_13 generate (AVG(id2007_dep_13.DepDelay));
Delay_dep_2007_14 = foreach group_dep_2007_14 generate (AVG(id2007_dep_14.DepDelay));
Delay_dep_2007_15 = foreach group_dep_2007_15 generate (AVG(id2007_dep_15.DepDelay));
Delay_dep_2007_16 = foreach group_dep_2007_16 generate (AVG(id2007_dep_16.DepDelay));
Delay_dep_2007_17 = foreach group_dep_2007_17 generate (AVG(id2007_dep_17.DepDelay));
Delay_dep_2007_18 = foreach group_dep_2007_18 generate (AVG(id2007_dep_18.DepDelay));
Delay_dep_2007_19 = foreach group_dep_2007_19 generate (AVG(id2007_dep_19.DepDelay));
Delay_dep_2007_20 = foreach group_dep_2007_20 generate (AVG(id2007_dep_20.DepDelay));
Delay_dep_2007_21 = foreach group_dep_2007_21 generate (AVG(id2007_dep_21.DepDelay));
Delay_dep_2007_22 = foreach group_dep_2007_22 generate (AVG(id2007_dep_22.DepDelay));
Delay_dep_2007_23 = foreach group_dep_2007_23 generate (AVG(id2007_dep_23.DepDelay));
Union2007 = UNION Delay_dep_2007_0,Delay_dep_2007_1,Delay_dep_2007_2,Delay_dep_2007_3,Delay_dep_2007_4,Delay_dep_2007_5,Delay_dep_2007_6,Delay_dep_2007_7,Delay_dep_2007_8,Delay_dep_2007_9,Delay_dep_2007_10,Delay_dep_2007_11,Delay_dep_2007_12,Delay_dep_2007_13,Delay_dep_2007_14,Delay_dep_2007_15,Delay_dep_2007_16,Delay_dep_2007_17,Delay_dep_2007_18,Delay_dep_2007_19,Delay_dep_2007_20,Delay_dep_2007_21,Delay_dep_2007_22,Delay_dep_2007_23;
STORE Union2007 INTO '/user/s31wcp55/q3/2007/dep' USING PigStorage (',');


