if __name__=='__main__':
  f=open('Q2.pig','w')
  code=""
  for intyear in range(1987,2009):
    year = str(intyear)
    code =code+ "id"+year+" = LOAD 'airflight/"+year+".csv' USING PigStorage(',') AS (\n Year:int,\n Month:int,\n DayofMonth:int,\n DayOfWeek:int,\n DepTime:chararray,\n CRSDepTime:chararray,\n ArrTime:chararray,\n CRSArrTime:chararray,\n UniqueCarrier:chararray,\n FlightNum:chararray,\n TailNum:chararray,\n ActualElapsedTime:int,\n CRSElapsedTime:int,\n AirTime:int,\n ArrDelay:int,\n DepDelay:int,\n Origin:chararray,\n Dest:chararray,\n Distance:int,\n TaxiIn:int,\n TaxiOut:int,\n Cancelled:chararray,\n CancellationCode:chararray,\n Diverted:int,\n CarrierDelay:int,\n WeatherDelay:int,\n NASDelay:int,\n SecurityDelay:int,\n LateAircraftDelay:int);\nweather_filter_"+year+" = FILTER id"+year+" BY WeatherDelay>0;\ngroup_"+year+" = group weather_filter_"+year+" all;\ncount_avg_"+year+" = foreach group_"+year+" generate AVG(weather_filter_"+year+".WeatherDelay), COUNT(weather_filter_"+year+".WeatherDelay);\nSTORE count_avg_"+year+" INTO '/user/s31wcp55/q2/id"+year+"_count_avg' USING PigStorage (',');\n"
  f.write(code)
  f.close
