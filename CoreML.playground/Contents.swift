import CreateML
import Foundation

let data = try MLDataTable(contentsOf: URL(fileURLWithPath: "/Users/miket/Documents/GitHub/swift-apps/better-rest.json"))
let (trainingData, testingData) = data.randomSplit(by: 0.8)

let regressor = try MLRegressor(trainingData: trainingData, targetColumn: "actualSleep")

let evaluationMetrics = regressor.evaluation(on: testingData)

let metadata = MLModelMetadata(author: "Miguel Teixeira", shortDescription: "Something to check when to sleep", version: "1.0")

try regressor.write(to: URL(fileURLWithPath: "/Users/miket/Documents/GitHub/swift-apps/SleepCalculator.mlmodel"), metadata: metadata)
