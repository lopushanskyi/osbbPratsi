import Foundation

class flat : CustomStringConvertible {
    var title : Int
    var room : Int
    var area : Int
    var quantity : Int
    
    init(title: Int, room: Int, area: Int, quantity: Int) {
        self.title = title
        self.room = room
        self.area = area
        self.quantity = quantity
    }
    
    var description: String {
        return "Flat Type #\(title). Rooms: \(room). Flat Area: \(area) sq.m"
    }
}

let typeOfFlat1 = flat(title: 1, room: 2, area: 40, quantity: 17)
let typeOfFlat2 = flat(title: 2, room: 2, area: 35, quantity: 17)
let typeOfFlat3 = flat(title: 3, room: 1, area: 31, quantity: 17)
let typeOfFlat4 = flat(title: 4, room: 2, area: 45, quantity: 18)
let typeOfFlat5 = flat(title: 5, room: 1, area: 28, quantity: 18)
let typeOfFlat6 = flat(title: 6, room: 3, area: 47, quantity: 18)

let typicalFloorFlats = 6
let floorQuanity = 9

// typical condition in whole Building
let typicalFloorArea = typeOfFlat1.area + typeOfFlat2.area + typeOfFlat3.area + typeOfFlat4.area + typeOfFlat5.area + typeOfFlat6.area

// special condition in Entrance 2 on 1 floor
let specialFloorArea = typeOfFlat3.area + typeOfFlat4.area + typeOfFlat5.area

let typeOfFlatsQuantity = typeOfFlat1.quantity + typeOfFlat2.quantity + typeOfFlat3.quantity + typeOfFlat4.quantity + typeOfFlat5.quantity + typeOfFlat6.quantity

print("Typical floor contains from \(typicalFloorFlats) flats. Floor area is: \(typicalFloorArea) sq.m (except first floor in Entrance #2)")

let entranceOne = floorQuanity * typicalFloorArea
let entranceTwo = (floorQuanity - 1) * typicalFloorArea + specialFloorArea

print("Total amount of flats is: \(typeOfFlatsQuantity).")

print("1-room flat: \(typeOfFlat3.quantity + typeOfFlat5.quantity). Total area: \((typeOfFlat3.area * typeOfFlat3.quantity) + (typeOfFlat5.area * typeOfFlat5.quantity)) sq.m")
print("2-room flat: \(typeOfFlat1.quantity + typeOfFlat2.quantity + typeOfFlat4.quantity). Total area: \((typeOfFlat1.area * typeOfFlat1.quantity) + (typeOfFlat2.area * typeOfFlat2.quantity) + (typeOfFlat4.area * typeOfFlat4.quantity)) sq.m")
print("3-room flat: \(typeOfFlat6.quantity). Total area: \(typeOfFlat6.area * typeOfFlat6.quantity) sq.m")

print("Entrance 1: \(floorQuanity * typicalFloorFlats) flats. Entrance 2: \(floorQuanity * typicalFloorFlats - 3) flats")
print("Flats area in Entrance #1 is: \(entranceOne) sq.m. Flats area in Entrance #2 is: \(entranceTwo) sq.m")
print("Building area is \(entranceOne + entranceTwo) sq.m")

let monthlyPaymentCoefHigh : Int = 8
let monthlyPaymentCoefLow : Int = 6

let monthlyPaymentEntrance1 = ((floorQuanity - 2) * typicalFloorArea * monthlyPaymentCoefHigh) + ((floorQuanity - 7) * typicalFloorArea * monthlyPaymentCoefLow)
let monthlyPaymentEntrance2 = ((floorQuanity - 2) * typicalFloorArea * monthlyPaymentCoefHigh) + ((floorQuanity - 8) * typicalFloorArea * monthlyPaymentCoefLow) + ((floorQuanity - 8) * specialFloorArea * monthlyPaymentCoefLow)

let monthlyPaymentBuilding = monthlyPaymentEntrance1 + monthlyPaymentEntrance2

print("Entrance #1 monthly payment \(monthlyPaymentEntrance1) uah")
print("Entrance #2 monthly payment \(monthlyPaymentEntrance2) uah")

for floor in [1, 2, 3, 4, 5, 6, 7, 8, 9] {
    if floor > 2 {
        print ("Floor \(floor) in Entrance #1 montly pay \(typicalFloorArea * monthlyPaymentCoefHigh) uah")
    }
    else {
        print ("Floor \(floor) in Entrance #1 montly pay \(typicalFloorArea * monthlyPaymentCoefLow) uah")
    }
}

for floor in [1, 2, 3, 4, 5, 6, 7, 8, 9] {
    if floor > 2 {
        print ("Floor \(floor) in Entrance #2 montly pay \(typicalFloorArea * monthlyPaymentCoefHigh) uah")
    }
    if floor == 2 {
        print ("Floor \(floor) in Entrance #2 montly pay \(typicalFloorArea * monthlyPaymentCoefLow) uah")
    }
    if floor == 1 {
        print ("Floor \(floor) in Entrance #2 montly pay \(specialFloorArea * monthlyPaymentCoefLow) uah")
    }
}

print("Monthly payment from building is \(monthlyPaymentBuilding) uah")
print("Yearly payment from building is \(monthlyPaymentBuilding * 12) uah")
