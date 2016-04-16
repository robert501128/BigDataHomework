id2008 = LOAD 'airflight/2008.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2008 = group id2008 all;
avg_2008 = foreach group_2008 generate AVG(id2008.ArrDelay), AVG(id2008.DepDelay), AVG(id2008.CarrierDelay), AVG(id2008.WeatherDelay), AVG(id2008.NASDelay), AVG(id2008.SecurityDelay), AVG(id2008.LateAircraftDelay);
max_2008 = foreach group_2008 generate MAX(id2008.ArrDelay), MAX(id2008.DepDelay), MAX(id2008.CarrierDelay), MAX(id2008.WeatherDelay), MAX(id2008.NASDelay), MAX(id2008.SecurityDelay), MAX(id2008.LateAircraftDelay);
STORE avg_2008 INTO '/user/s31wcp55/q1q2/id2008_avg' USING PigStorage (',');
STORE max_2008 INTO '/user/s31wcp55/q1q2/id2008_max' USING PigStorage (',');
id2007 = LOAD 'airflight/2007.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2007 = group id2007 all;
avg_2007 = foreach group_2007 generate AVG(id2007.ArrDelay), AVG(id2007.DepDelay), AVG(id2007.CarrierDelay), AVG(id2007.WeatherDelay), AVG(id2007.NASDelay), AVG(id2007.SecurityDelay), AVG(id2007.LateAircraftDelay);
max_2007 = foreach group_2007 generate MAX(id2007.ArrDelay), MAX(id2007.DepDelay), MAX(id2007.CarrierDelay), MAX(id2007.WeatherDelay), MAX(id2007.NASDelay), MAX(id2007.SecurityDelay), MAX(id2007.LateAircraftDelay);
STORE avg_2007 INTO '/user/s31wcp55/q1q2/id2007_avg' USING PigStorage (',');
STORE max_2007 INTO '/user/s31wcp55/q1q2/id2007_max' USING PigStorage (',');
id2006 = LOAD 'airflight/2006.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2006 = group id2006 all;
avg_2006 = foreach group_2006 generate AVG(id2006.ArrDelay), AVG(id2006.DepDelay), AVG(id2006.CarrierDelay), AVG(id2006.WeatherDelay), AVG(id2006.NASDelay), AVG(id2006.SecurityDelay), AVG(id2006.LateAircraftDelay);
max_2006 = foreach group_2006 generate MAX(id2006.ArrDelay), MAX(id2006.DepDelay), MAX(id2006.CarrierDelay), MAX(id2006.WeatherDelay), MAX(id2006.NASDelay), MAX(id2006.SecurityDelay), MAX(id2006.LateAircraftDelay);
STORE avg_2006 INTO '/user/s31wcp55/q1q2/id2006_avg' USING PigStorage (',');
STORE max_2006 INTO '/user/s31wcp55/q1q2/id2006_max' USING PigStorage (',');
id2005 = LOAD 'airflight/2005.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2005 = group id2005 all;
avg_2005 = foreach group_2005 generate AVG(id2005.ArrDelay), AVG(id2005.DepDelay), AVG(id2005.CarrierDelay), AVG(id2005.WeatherDelay), AVG(id2005.NASDelay), AVG(id2005.SecurityDelay), AVG(id2005.LateAircraftDelay);
max_2005 = foreach group_2005 generate MAX(id2005.ArrDelay), MAX(id2005.DepDelay), MAX(id2005.CarrierDelay), MAX(id2005.WeatherDelay), MAX(id2005.NASDelay), MAX(id2005.SecurityDelay), MAX(id2005.LateAircraftDelay);
STORE avg_2005 INTO '/user/s31wcp55/q1q2/id2005_avg' USING PigStorage (',');
STORE max_2005 INTO '/user/s31wcp55/q1q2/id2005_max' USING PigStorage (',');
id2004 = LOAD 'airflight/2004.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2004 = group id2004 all;
avg_2004 = foreach group_2004 generate AVG(id2004.ArrDelay), AVG(id2004.DepDelay), AVG(id2004.CarrierDelay), AVG(id2004.WeatherDelay), AVG(id2004.NASDelay), AVG(id2004.SecurityDelay), AVG(id2004.LateAircraftDelay);
max_2004 = foreach group_2004 generate MAX(id2004.ArrDelay), MAX(id2004.DepDelay), MAX(id2004.CarrierDelay), MAX(id2004.WeatherDelay), MAX(id2004.NASDelay), MAX(id2004.SecurityDelay), MAX(id2004.LateAircraftDelay);
STORE avg_2004 INTO '/user/s31wcp55/q1q2/id2004_avg' USING PigStorage (',');
STORE max_2004 INTO '/user/s31wcp55/q1q2/id2004_max' USING PigStorage (',');
id2003 = LOAD 'airflight/2003.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2003 = group id2003 all;
avg_2003 = foreach group_2003 generate AVG(id2003.ArrDelay), AVG(id2003.DepDelay), AVG(id2003.CarrierDelay), AVG(id2003.WeatherDelay), AVG(id2003.NASDelay), AVG(id2003.SecurityDelay), AVG(id2003.LateAircraftDelay);
max_2003 = foreach group_2003 generate MAX(id2003.ArrDelay), MAX(id2003.DepDelay), MAX(id2003.CarrierDelay), MAX(id2003.WeatherDelay), MAX(id2003.NASDelay), MAX(id2003.SecurityDelay), MAX(id2003.LateAircraftDelay);
STORE avg_2003 INTO '/user/s31wcp55/q1q2/id2003_avg' USING PigStorage (',');
STORE max_2003 INTO '/user/s31wcp55/q1q2/id2003_max' USING PigStorage (',');
id2002 = LOAD 'airflight/2002.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2002 = group id2002 all;
avg_2002 = foreach group_2002 generate AVG(id2002.ArrDelay), AVG(id2002.DepDelay), AVG(id2002.CarrierDelay), AVG(id2002.WeatherDelay), AVG(id2002.NASDelay), AVG(id2002.SecurityDelay), AVG(id2002.LateAircraftDelay);
max_2002 = foreach group_2002 generate MAX(id2002.ArrDelay), MAX(id2002.DepDelay), MAX(id2002.CarrierDelay), MAX(id2002.WeatherDelay), MAX(id2002.NASDelay), MAX(id2002.SecurityDelay), MAX(id2002.LateAircraftDelay);
STORE avg_2002 INTO '/user/s31wcp55/q1q2/id2002_avg' USING PigStorage (',');
STORE max_2002 INTO '/user/s31wcp55/q1q2/id2002_max' USING PigStorage (',');
id2001 = LOAD 'airflight/2001.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2001 = group id2001 all;
avg_2001 = foreach group_2001 generate AVG(id2001.ArrDelay), AVG(id2001.DepDelay), AVG(id2001.CarrierDelay), AVG(id2001.WeatherDelay), AVG(id2001.NASDelay), AVG(id2001.SecurityDelay), AVG(id2001.LateAircraftDelay);
max_2001 = foreach group_2001 generate MAX(id2001.ArrDelay), MAX(id2001.DepDelay), MAX(id2001.CarrierDelay), MAX(id2001.WeatherDelay), MAX(id2001.NASDelay), MAX(id2001.SecurityDelay), MAX(id2001.LateAircraftDelay);
STORE avg_2001 INTO '/user/s31wcp55/q1q2/id2001_avg' USING PigStorage (',');
STORE max_2001 INTO '/user/s31wcp55/q1q2/id2001_max' USING PigStorage (',');
id2000 = LOAD 'airflight/2000.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_2000 = group id2000 all;
avg_2000 = foreach group_2000 generate AVG(id2000.ArrDelay), AVG(id2000.DepDelay), AVG(id2000.CarrierDelay), AVG(id2000.WeatherDelay), AVG(id2000.NASDelay), AVG(id2000.SecurityDelay), AVG(id2000.LateAircraftDelay);
max_2000 = foreach group_2000 generate MAX(id2000.ArrDelay), MAX(id2000.DepDelay), MAX(id2000.CarrierDelay), MAX(id2000.WeatherDelay), MAX(id2000.NASDelay), MAX(id2000.SecurityDelay), MAX(id2000.LateAircraftDelay);
STORE avg_2000 INTO '/user/s31wcp55/q1q2/id2000_avg' USING PigStorage (',');
STORE max_2000 INTO '/user/s31wcp55/q1q2/id2000_max' USING PigStorage (',');
id1999 = LOAD 'airflight/1999.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1999 = group id1999 all;
avg_1999 = foreach group_1999 generate AVG(id1999.ArrDelay), AVG(id1999.DepDelay), AVG(id1999.CarrierDelay), AVG(id1999.WeatherDelay), AVG(id1999.NASDelay), AVG(id1999.SecurityDelay), AVG(id1999.LateAircraftDelay);
max_1999 = foreach group_1999 generate MAX(id1999.ArrDelay), MAX(id1999.DepDelay), MAX(id1999.CarrierDelay), MAX(id1999.WeatherDelay), MAX(id1999.NASDelay), MAX(id1999.SecurityDelay), MAX(id1999.LateAircraftDelay);
STORE avg_1999 INTO '/user/s31wcp55/q1q2/id1999_avg' USING PigStorage (',');
STORE max_1999 INTO '/user/s31wcp55/q1q2/id1999_max' USING PigStorage (',');
id1998 = LOAD 'airflight/1998.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1998 = group id1998 all;
avg_1998 = foreach group_1998 generate AVG(id1998.ArrDelay), AVG(id1998.DepDelay), AVG(id1998.CarrierDelay), AVG(id1998.WeatherDelay), AVG(id1998.NASDelay), AVG(id1998.SecurityDelay), AVG(id1998.LateAircraftDelay);
max_1998 = foreach group_1998 generate MAX(id1998.ArrDelay), MAX(id1998.DepDelay), MAX(id1998.CarrierDelay), MAX(id1998.WeatherDelay), MAX(id1998.NASDelay), MAX(id1998.SecurityDelay), MAX(id1998.LateAircraftDelay);
STORE avg_1998 INTO '/user/s31wcp55/q1q2/id1998_avg' USING PigStorage (',');
STORE max_1998 INTO '/user/s31wcp55/q1q2/id1998_max' USING PigStorage (',');
id1997 = LOAD 'airflight/1997.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1997 = group id1997 all;
avg_1997 = foreach group_1997 generate AVG(id1997.ArrDelay), AVG(id1997.DepDelay), AVG(id1997.CarrierDelay), AVG(id1997.WeatherDelay), AVG(id1997.NASDelay), AVG(id1997.SecurityDelay), AVG(id1997.LateAircraftDelay);
max_1997 = foreach group_1997 generate MAX(id1997.ArrDelay), MAX(id1997.DepDelay), MAX(id1997.CarrierDelay), MAX(id1997.WeatherDelay), MAX(id1997.NASDelay), MAX(id1997.SecurityDelay), MAX(id1997.LateAircraftDelay);
STORE avg_1997 INTO '/user/s31wcp55/q1q2/id1997_avg' USING PigStorage (',');
STORE max_1997 INTO '/user/s31wcp55/q1q2/id1997_max' USING PigStorage (',');
id1996 = LOAD 'airflight/1996.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1996 = group id1996 all;
avg_1996 = foreach group_1996 generate AVG(id1996.ArrDelay), AVG(id1996.DepDelay), AVG(id1996.CarrierDelay), AVG(id1996.WeatherDelay), AVG(id1996.NASDelay), AVG(id1996.SecurityDelay), AVG(id1996.LateAircraftDelay);
max_1996 = foreach group_1996 generate MAX(id1996.ArrDelay), MAX(id1996.DepDelay), MAX(id1996.CarrierDelay), MAX(id1996.WeatherDelay), MAX(id1996.NASDelay), MAX(id1996.SecurityDelay), MAX(id1996.LateAircraftDelay);
STORE avg_1996 INTO '/user/s31wcp55/q1q2/id1996_avg' USING PigStorage (',');
STORE max_1996 INTO '/user/s31wcp55/q1q2/id1996_max' USING PigStorage (',');
id1995 = LOAD 'airflight/1995.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1995 = group id1995 all;
avg_1995 = foreach group_1995 generate AVG(id1995.ArrDelay), AVG(id1995.DepDelay), AVG(id1995.CarrierDelay), AVG(id1995.WeatherDelay), AVG(id1995.NASDelay), AVG(id1995.SecurityDelay), AVG(id1995.LateAircraftDelay);
max_1995 = foreach group_1995 generate MAX(id1995.ArrDelay), MAX(id1995.DepDelay), MAX(id1995.CarrierDelay), MAX(id1995.WeatherDelay), MAX(id1995.NASDelay), MAX(id1995.SecurityDelay), MAX(id1995.LateAircraftDelay);
STORE avg_1995 INTO '/user/s31wcp55/q1q2/id1995_avg' USING PigStorage (',');
STORE max_1995 INTO '/user/s31wcp55/q1q2/id1995_max' USING PigStorage (',');
id1994 = LOAD 'airflight/1994.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1994 = group id1994 all;
avg_1994 = foreach group_1994 generate AVG(id1994.ArrDelay), AVG(id1994.DepDelay), AVG(id1994.CarrierDelay), AVG(id1994.WeatherDelay), AVG(id1994.NASDelay), AVG(id1994.SecurityDelay), AVG(id1994.LateAircraftDelay);
max_1994 = foreach group_1994 generate MAX(id1994.ArrDelay), MAX(id1994.DepDelay), MAX(id1994.CarrierDelay), MAX(id1994.WeatherDelay), MAX(id1994.NASDelay), MAX(id1994.SecurityDelay), MAX(id1994.LateAircraftDelay);
STORE avg_1994 INTO '/user/s31wcp55/q1q2/id1994_avg' USING PigStorage (',');
STORE max_1994 INTO '/user/s31wcp55/q1q2/id1994_max' USING PigStorage (',');
id1993 = LOAD 'airflight/1993.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1993 = group id1993 all;
avg_1993 = foreach group_1993 generate AVG(id1993.ArrDelay), AVG(id1993.DepDelay), AVG(id1993.CarrierDelay), AVG(id1993.WeatherDelay), AVG(id1993.NASDelay), AVG(id1993.SecurityDelay), AVG(id1993.LateAircraftDelay);
max_1993 = foreach group_1993 generate MAX(id1993.ArrDelay), MAX(id1993.DepDelay), MAX(id1993.CarrierDelay), MAX(id1993.WeatherDelay), MAX(id1993.NASDelay), MAX(id1993.SecurityDelay), MAX(id1993.LateAircraftDelay);
STORE avg_1993 INTO '/user/s31wcp55/q1q2/id1993_avg' USING PigStorage (',');
STORE max_1993 INTO '/user/s31wcp55/q1q2/id1993_max' USING PigStorage (',');
id1992 = LOAD 'airflight/1992.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1992 = group id1992 all;
avg_1992 = foreach group_1992 generate AVG(id1992.ArrDelay), AVG(id1992.DepDelay), AVG(id1992.CarrierDelay), AVG(id1992.WeatherDelay), AVG(id1992.NASDelay), AVG(id1992.SecurityDelay), AVG(id1992.LateAircraftDelay);
max_1992 = foreach group_1992 generate MAX(id1992.ArrDelay), MAX(id1992.DepDelay), MAX(id1992.CarrierDelay), MAX(id1992.WeatherDelay), MAX(id1992.NASDelay), MAX(id1992.SecurityDelay), MAX(id1992.LateAircraftDelay);
STORE avg_1992 INTO '/user/s31wcp55/q1q2/id1992_avg' USING PigStorage (',');
STORE max_1992 INTO '/user/s31wcp55/q1q2/id1992_max' USING PigStorage (',');
id1991 = LOAD 'airflight/1991.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1991 = group id1991 all;
avg_1991 = foreach group_1991 generate AVG(id1991.ArrDelay), AVG(id1991.DepDelay), AVG(id1991.CarrierDelay), AVG(id1991.WeatherDelay), AVG(id1991.NASDelay), AVG(id1991.SecurityDelay), AVG(id1991.LateAircraftDelay);
max_1991 = foreach group_1991 generate MAX(id1991.ArrDelay), MAX(id1991.DepDelay), MAX(id1991.CarrierDelay), MAX(id1991.WeatherDelay), MAX(id1991.NASDelay), MAX(id1991.SecurityDelay), MAX(id1991.LateAircraftDelay);
STORE avg_1991 INTO '/user/s31wcp55/q1q2/id1991_avg' USING PigStorage (',');
STORE max_1991 INTO '/user/s31wcp55/q1q2/id1991_max' USING PigStorage (',');
id1990 = LOAD 'airflight/1990.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1990 = group id1990 all;
avg_1990 = foreach group_1990 generate AVG(id1990.ArrDelay), AVG(id1990.DepDelay), AVG(id1990.CarrierDelay), AVG(id1990.WeatherDelay), AVG(id1990.NASDelay), AVG(id1990.SecurityDelay), AVG(id1990.LateAircraftDelay);
max_1990 = foreach group_1990 generate MAX(id1990.ArrDelay), MAX(id1990.DepDelay), MAX(id1990.CarrierDelay), MAX(id1990.WeatherDelay), MAX(id1990.NASDelay), MAX(id1990.SecurityDelay), MAX(id1990.LateAircraftDelay);
STORE avg_1990 INTO '/user/s31wcp55/q1q2/id1990_avg' USING PigStorage (',');
STORE max_1990 INTO '/user/s31wcp55/q1q2/id1990_max' USING PigStorage (',');
id1989 = LOAD 'airflight/1989.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1989 = group id1989 all;
avg_1989 = foreach group_1989 generate AVG(id1989.ArrDelay), AVG(id1989.DepDelay), AVG(id1989.CarrierDelay), AVG(id1989.WeatherDelay), AVG(id1989.NASDelay), AVG(id1989.SecurityDelay), AVG(id1989.LateAircraftDelay);
max_1989 = foreach group_1989 generate MAX(id1989.ArrDelay), MAX(id1989.DepDelay), MAX(id1989.CarrierDelay), MAX(id1989.WeatherDelay), MAX(id1989.NASDelay), MAX(id1989.SecurityDelay), MAX(id1989.LateAircraftDelay);
STORE avg_1989 INTO '/user/s31wcp55/q1q2/id1989_avg' USING PigStorage (',');
STORE max_1989 INTO '/user/s31wcp55/q1q2/id1989_max' USING PigStorage (',');
id1988 = LOAD 'airflight/1988.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1988 = group id1988 all;
avg_1988 = foreach group_1988 generate AVG(id1988.ArrDelay), AVG(id1988.DepDelay), AVG(id1988.CarrierDelay), AVG(id1988.WeatherDelay), AVG(id1988.NASDelay), AVG(id1988.SecurityDelay), AVG(id1988.LateAircraftDelay);
max_1988 = foreach group_1988 generate MAX(id1988.ArrDelay), MAX(id1988.DepDelay), MAX(id1988.CarrierDelay), MAX(id1988.WeatherDelay), MAX(id1988.NASDelay), MAX(id1988.SecurityDelay), MAX(id1988.LateAircraftDelay);
STORE avg_1988 INTO '/user/s31wcp55/q1q2/id1988_avg' USING PigStorage (',');
STORE max_1988 INTO '/user/s31wcp55/q1q2/id1988_max' USING PigStorage (',');
id1987 = LOAD 'airflight/1987.csv' USING PigStorage(',') AS (
 Year:int,
 Month:int,
 DayofMonth:int,
 DayOfWeek:int,
 DepTime:chararray,
 CRSDepTime:chararray,
 ArrTime:chararray,
 CRSArrTime:chararray,
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
group_1987 = group id1987 all;
avg_1987 = foreach group_1987 generate AVG(id1987.ArrDelay), AVG(id1987.DepDelay), AVG(id1987.CarrierDelay), AVG(id1987.WeatherDelay), AVG(id1987.NASDelay), AVG(id1987.SecurityDelay), AVG(id1987.LateAircraftDelay);
max_1987 = foreach group_1987 generate MAX(id1987.ArrDelay), MAX(id1987.DepDelay), MAX(id1987.CarrierDelay), MAX(id1987.WeatherDelay), MAX(id1987.NASDelay), MAX(id1987.SecurityDelay), MAX(id1987.LateAircraftDelay);
STORE avg_1987 INTO '/user/s31wcp55/q1q2/id1987_avg' USING PigStorage (',');
STORE max_1987 INTO '/user/s31wcp55/q1q2/id1987_max' USING PigStorage (',');
