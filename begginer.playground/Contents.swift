import UIKit

// operators

// Unary - only works on one target

var isBoolean = true

isBoolean = !isBoolean

// Binary - works on two targets

var message = "Hello, playground"

// Ternary

var feelGood = true

feelGood = isBoolean ? true : false

var cash = 100

var bankAccount = cash >= 150 ? "I am not broke" : "I am broke"


// Types

// String
var isString: String = "I am a string" // type explicit

var firstName = "miguel" // type inference (Swift works better like this)
var lastName = "teixeira"

var fullName = firstName + " " + lastName // Concate

fullName = "\(firstName) \(lastName)" // Interpolation

fullName = fullName.capitalized // Camel Case

fullName = fullName.lowercased() // All lower case

var count = firstName.count // String length


// Numbers
var isInteger = 10 // Int

var weight = 70.82 // If expliciting use Double because Float only allows 6 decimal digits

// Arithmetic operators -> + - / * %

var multiply = 15 * 20

var sum = 15 + 20

var diff = 10 - 3

var div = 12 / 3

var remainder = 13 % 5

var randomNumber = 12

// Boolean

var isBool = true // Bool explicinting

// Dictionaries

var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[4] = "four"

namesOfIntegers = [:] // clear Dictionaries

var airports: [String: String] = ["YYZ" : "Toronto",  "LAX" : "Los Angeles"]

airports["DEV"] = "Develop airport"

airports["DEV"] = nil // remove from Dictionay

print(airports["YYZ"]) // Optional

print(airports["YYZ"]!) // Optional unwrap

for (airportCode, airportName) in airports {
    print(airportCode  + " is " + airportName)
}

for key in airports.keys {
    print(key)
}

for val in airports.values {
    print(val)
}

// Conditional operators

if randomNumber % 2 == 0 && randomNumber >= 12 {
    print ("even number and bigger than 12")
} else {
    print ("odd number or smaller than 12")
}


// Arrays

var mySalaries = [1999, 100.2, 99.2] // expliciting [Double] or Array<Double>

mySalaries.append(3900.2)

mySalaries.remove(at: 0)

print(mySalaries)

print(mySalaries.count)

var students = [String]() // Empty array initialized

// Loops
var index = 0

// while loop

repeat {
    mySalaries[index] = mySalaries[index] + (mySalaries[index] * 0.10)
    index += 1
} while (index < mySalaries.count)

print(mySalaries)

// for loop
for i in 0..<mySalaries.count {
    mySalaries[i] = mySalaries[i] + (mySalaries[i] * 0.10)
}

for x in 1...5 {
    print("Index \(x)")
}

// for each loop
var mySalaries2 = [100, 200, 300] // expliciting [Double] or Array<Double>

for salary in mySalaries2 {
 print(salary)
}


// OOP in swift

class Vehicle {
    var tires = 4
    var lights = 2
    var horsepower = 349
    var model = ""
    
    
    func drive() {
        //accelerate the vehicle
    }

    func brake() {
        
    }
}

let bmw = Vehicle() // constant

bmw.model = "BMW"

print(bmw.model)

func someFunciton(vehicle: Vehicle) {
    vehicle.model = "New model"
}

someFunciton(vehicle: bmw)

print(bmw.model)


// Inheritance

class VehicleIn {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init () {
        print(("I am the parent"))
    }
    
    
    func drive(speedIncrease: Double) { // Polymorhphism
        self.currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}

class SportsCar: VehicleIn {
    
    override init() {
        super.init()
        print ("I am the child")
        make = "BMW"
        model = "3 series"
    }
    
    override func drive(speedIncrease: Double) { // Polymorhphism
        self.currentSpeed += speedIncrease * 3
    }
    
}

let sportCar = SportsCar()

sportCar.drive(speedIncrease: 10)
print(sportCar.currentSpeed)
