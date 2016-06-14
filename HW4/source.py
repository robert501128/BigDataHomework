from pyspark import SparkContext
from pyspark.mllib.classification import SVMWithSGD, SVMModel
from pyspark.mllib.classification import LogisticRegressionWithLBFGS, LogisticRegressionModel
from pyspark.mllib.tree import DecisionTree, DecisionTreeModel
from pyspark.mllib.regression import LabeledPoint

def parsePoint(line):
	values = []
	rawValues = line.split(',')[0:22]
	for i in range(0,22):
		if i not in [8, 10, 16, 17]:
			values.append(float(rawValues[i]))
	length = len(values)
	return LabeledPoint(values[length-1], values[0:length-1])

sc = SparkContext(appName = "BigDataHW4")

# Option
USE_SVM = True
USE_LR = False
USE_DT = False

# Read Data
trainData = sc.textFile("train/*.csv")
testData = sc.textFile("predict/2008.csv")

# Data Preprocess
header = trainData.first()

parsedTrainData = trainData \
			.filter(lambda line: line != header) \
			.map(lambda line: line.replace("NA", "999999")) \
			.map(parsePoint)


parsedTestData = testData \
			.filter(lambda line: line != header) \
			.map(lambda line: line.replace("NA", "999999")) \
			.map(parsePoint)

# Testing
result = ''
if USE_SVM:
	svmModel = SVMWithSGD.train(parsedTrainData, iterations=100)
	labelsAndPreds = parsedTestData.map(lambda p: (p.label, svmModel.predict(p.features)))
	svmAccuracy = labelsAndPreds.filter(lambda (v, p): v == p).count()/float(parsedTestData.count())
	svmPrecision = labelsAndPreds.filter(lambda (v, p): v==1 and p==1).count()/float(labelsAndPreds.filter(lambda (v, p): p==1).count())
	svmRecall = labelsAndPreds.filter(lambda (v, p): v==1 and p==1).count()/float(labelsAndPreds.filter(lambda (v, p): v==1).count())
	
	result += "##### SVM #####\n" + \
		  "SVM Accuracy: " + str(svmAccuracy) + "\n" \
		  "SVM Precision: " + str(svmPrecision) + "\n" \
		  "SVM Recall: " + str(svmRecall) + "\n" 

if USE_LR:
	lrModel = LogisticRegressionWithLBFGS.train(parsedTrainData)
	labelsAndPreds = parsedTestData.map(lambda p: (p.label, lrModel.predict(p.features)))
	lrAccuracy = labelsAndPreds.filter(lambda (v, p): v == p).count()/float(parsedTestData.count())
	lrPrecision = labelsAndPreds.filter(lambda (v, p): v==1 and p==1).count()/float(labelsAndPreds.filter(lambda (v, p): p==1).count())
	lrRecall = labelsAndPreds.filter(lambda (v, p): v==1 and p==1).count()/float(labelsAndPreds.filter(lambda (v, p): v==1).count())
	
	result += "##### LR #####\n" + \
		  "LR Accuracy: " + str(lrAccuracy) + "\n" \
		  "LR Precision: " + str(lrPrecision) + "\n" \
		  "LR Recall: " + str(lrRecall) + "\n" 

if USE_DT:
	dtModel = DecisionTree.trainClassifier(parsedTrainData, numClasses=2, categoricalFeaturesInfo={},impurity='gini', maxDepth=5, maxBins=32)
	preds = dtModel.predict(parsedTestData.map(lambda p: p.features))
	labelsAndPreds = parsedTestData.map(lambda p: p.label).zip(preds)
	dtAccuracy = labelsAndPreds.filter(lambda (v, p): v == p).count()/float(parsedTestData.count())
	dtPrecision = labelsAndPreds.filter(lambda (v, p): v==1 and p==1).count()/float(labelsAndPreds.filter(lambda (v, p): p==1).count())
	dtRecall = labelsAndPreds.filter(lambda (v, p): v==1 and p==1).count()/float(labelsAndPreds.filter(lambda (v, p): v==1).count())
	
	result += "##### DT #####\n" + \
		  "DT Accuracy: " + str(dtAccuracy) + "\n" \
		  "DT Precision: " + str(dtPrecision) + "\n" \
		  "DT Recall: " + str(dtRecall) + "\n" 

file = open("result.txt", "w")
file.write(result)


	







