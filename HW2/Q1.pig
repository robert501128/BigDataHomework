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
STORE avg_2008,max_2008 INTO '/user/s31wcp55/id2008' USING PigStorage (',');
