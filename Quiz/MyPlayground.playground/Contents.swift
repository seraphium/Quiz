//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
str = "Hello, swift"
let constStr = str

var nextYear: Int
var bodyTemp: Float
var hasPet: Bool

var arrayOfInts: [Int]
var dictionaryOfCapitalsByCountry: [String: String]
var winningLotteryNumbers: Set<Int>

let number = 42
let fmStation = 91.1

var countUp = ["one", "two"]
let nameByParkingSpace = [13: "Alice", 27:"Bob"]
let secondElement = countUp[1]

let emptyString = String()
let emptyArrayOfInts = [Int]()
let emptySetOfFloat = Set<Float>()

let defaultNumber = Int()
let defaultBool = Bool()

let meaninfOfLife = String(number)
let availableRooms = Set([205, 411, 412])

let defaultFloat = Float()
let floatFromLiteral = Float(3.14)
let easypi = 3.14
let floatingPi: Float = 3.14

countUp.count
emptyString.isEmpty
countUp.append("three")

var anOptionalFloat : Float?

var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.8
reading2 = 9.7
reading3 = 9.2
let avgReading = (reading1! + reading2! + reading3!) / 3

if let r1 = reading1,
    r2 = reading2,
    r3 = reading3 {
        let avgReadingOptionalBinding = (r1 + r2 + r3) / 3
} else {
    let errorString = "instrument report a reading that was nil"
}

let space1342ssignee :String? = nameByParkingSpace[42]
if let space13Assignee = nameByParkingSpace[13] {
    print ("Key 13 is assigned in dictionary")
}

//LOOP
for string in countUp {
    //use 'string'
}

for (i, string) in countUp.enumerate() {
    //(0, "one"), (1, "two")
}

for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
}

//Enumerations
enum PieType : Int {
    case Apple = 0
    case Cherry
    case Pecan
}

let favoritePie = PieType.Apple
let name: String
switch favoritePie {
case .Apple:
    name = "Apple"
case .Cherry:
    name = "Cherry"
case .Pecan:
    name = "Pecan"
}

let osxVersion: Int = 11
switch osxVersion {
case 0...8:
    print("A big cat")
case 9:
    print ("Mavericks")
case 10:
    print ("Yosemite")
default:
    print ("Greeting,  people of future! what's new in 10.\(osxVersion)?")
}

let pieRawValue = PieType.Pecan.rawValue;
if let pieType = PieType(rawValue: pieRawValue) {
    //Got a valid "pieType"
}


