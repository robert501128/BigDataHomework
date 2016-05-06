text_file = sc.textFile("hdfs://nn/user/s31wcp55/test.txt")
counts = text_file.flatMap(lambda line: line.split(" ")) \
             .map(lambda word: (word, 1)) \
             .reduceByKey(lambda a, b: a + b)
counts.saveAsTextFile("hdfs://nn/user/s31wcp55/output")
