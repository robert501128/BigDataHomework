from pyspark import SparkContext, SparkConf
import time
conf = SparkConf().setAppName("localTest")
sc = SparkContext(conf=conf)

tStart = time.time()
text_file = sc.textFile('yellow_tripdata_2015-12.csv,yellow_tripdata_2015-11.csv,yellow_tripdata_2015-10.csv,yellow_tripdata_2015-09.csv,yellow_tripdata_2015-08.csv,yellow_tripdata_2015-07.csv').map(lambda line: (line.split(',')[11])).map(lambda word: (word, 1)).reduceByKey(lambda a,b: a+b).collect()
tStop = time.time()
tDura = tStop -tStart
f = open("output.txt","w")
f.write('count: '+str(text_file)+'\n')
f.write('time: '+str(tDura)+'\n')

