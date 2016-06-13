from pyspark.sql import SQLContext
from pyspark.sql.types import *
from pyspark.sql.functions import udf

numFile = 21
sqlContext = SQLContext(sc)
dflist = []
column_udf = udf(lambda name: 0 if name == 'NA' else int(name), IntegerType())
for i in range(numFile):
  x = sqlContext.read.format('com.databricks.spark.csv').options(header='true',inferschema='true',nullValue='NA').load('flight/'+str(1987+i)+'.csv')
  x = x.select('Year','Month','DayofMonth','DayOfWeek','DepTime','CRSDepTime','ArrTime','CRSArrTime','UniqueCarrier'\
                            ,'FlightNum','TailNum','ActualElapsedTime','CRSElapsedTime','AirTime','ArrDelay','DepDelay', 'Origin'\
                            ,'Dest','Distance','TaxiIn','TaxiOut','Cancelled')
  x=x.na.fill('0')
  xtype = x.dtypes
  for t in xtype:
     if t[1]=='string' and t[0] not in ['Origin','Dest','TailNum','UniqueCarrier','FlightNum']:
       x=x.withColumn(t[0],x[t[0]].cast('integer'))       
  x.write.parquet('flight/dataset/key='+str(i))
  dflist.append(x)
