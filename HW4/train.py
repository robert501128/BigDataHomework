from pyspark import SparkContext
from pyspark.sql import SQLContext
from pyspark.mllib.linalg import Vectors
from pyspark.ml.feature import VectorAssembler
from pyspark.ml.classification import LogisticRegression
from pyspark.ml import Pipeline
from pyspark.ml.classification import DecisionTreeClassifier
from pyspark.ml.feature import StringIndexer, VectorIndexer
from pyspark.ml.evaluation import MulticlassClassificationEvaluator

sc = SparkContext(appName = "BigDataHW4")

def preprocess(data):
  data = data.select('Year','Month','DayofMonth','DayOfWeek','DepTime','CRSDepTime','ArrTime','CRSArrTime','UniqueCarrier'\
                            ,'FlightNum','TailNum','ActualElapsedTime','CRSElapsedTime','AirTime','ArrDelay','DepDelay', 'Origin'\
                            ,'Dest','Distance','TaxiIn','TaxiOut','Cancelled')
  data = data.na.fill('999999')
  for t in data.dtypes:
   if t[1]=='string' and t[0] not in ['Origin','Dest','TailNum','UniqueCarrier','FlightNum']:
     data=data.withColumn(t[0],x[t[0]].cast('integer'))
  data = data.na.fill(999999)
  data = data.withColumnRenamed('Cancelled','label')
  data = data.withColumn('label',data.label.cast('double'))
  assembler = VectorAssembler(
	    inputCols=['Year','Month','DayofMonth','DayOfWeek'
		,'DepTime','CRSDepTime','ArrTime','CRSArrTime',
		'ActualElapsedTime','CRSElapsedTime','AirTime',
		'ArrDelay','DepDelay','Distance','TaxiIn','TaxiOut'],
	    outputCol='features')
  data = assembler.transform(data)
  data = data.select('features','label')
  return data
  

# Option
USE_SVM = True
USE_LR = False
USE_DT = False

# Read Data
sqlContext = SQLContext(sc)
trainData = sqlContext.read.format('com.databricks.spark.csv').options(header='true',inferschema='true',nullValue='NA').load('flight/*.csv')
testData = sqlContext.read.format('com.databricks.spark.csv').options(header='true',inferschema='true',nullValue='NA').load('test/*.csv')

#Preprocess Data
trainData = preprocess(trainData)
testData = preprocess(testData)

#Logistic Regression
lr = LogisticRegression(maxIter=10, regParam=0.3, elasticNetParam=0.8)
lrModel = lr.fit(trainData)
lrprediction = lrModel.transform(testData)
lrselected = lrprediction.select("probability").first().probability[0]
result="Logistic Regression Accuracy:"+str(lrselected)+'\n'

#Decision Tree Regression
dataset = trainData.unionAll(testData)
labelIndexer = StringIndexer(inputCol="label", outputCol="indexedLabel").fit(dataset)
featureIndexer =\
    VectorIndexer(inputCol="features", outputCol="indexedFeatures", maxCategories=4).fit(dataset)
# Train a DecisionTree model.
dt = DecisionTreeClassifier(labelCol="indexedLabel", featuresCol="indexedFeatures")
# Chain indexers and tree in a Pipeline
pipeline = Pipeline(stages=[labelIndexer, featureIndexer, dt])
# Train model.  This also runs the indexers.
dcmodel = pipeline.fit(trainData)
# Make predictions.
dcprediction = dcmodel.transform(testData)
dcselected = dcprediction.select("probability").first().probability[0]
result+="Decision Tree Accuracy:"+str(dcselected)+'\n'


file = open("result.txt", "w")
file.write(result)
file.close()


	







