//
//  main.swift
//  PizzaOrder
//
//  Created by Shamkhal Guliyev on 17.12.22.
//

import Foundation

/*
 Bu proyektde pizza sifarisi edilecek.
 - User maksimum 3 eded pizza sifaris ede biler. (Kod ile yoxlamaq lazimdir)
 - Addimlar:
 - pizza novu secilecek (maksimum 3 eded)
 - sos novu secilecek (maksimum 2 eded)
 - icki novu secilecek (maksimum 2 eded)
 - Sifaris sebete elave olunandan sonraki addimlar
 - Ad soyad
 - Adress
 - Telefon nomresi
 */

let pizzaList = ["1": "Pepperoni Pizza",
                 "2": "Veggie Pizza",
                 "3": "Meat Pizza",
                 "4": "Cheese Pizza",
                 "5": "Margherita Pizza",
                 "6": "Hawaiian Pizza",
                 "7": "Buffalo Pizza"]

let sousList = ["1": "Yogurt",
                "2": "Meksika",
                "3": "Ketchup",
                "4": "Mayonese"]

let drinkList = ["1": "Coca-Cola",
                 "2": "Fanta",
                 "3": "Sprite",
                 "4": "Ayran",
                 "5": "Apple juice"]

//INTRODCUTION
print("WELCOME TO ATL PIZZA")

//PIZZA SELECTION

print(pizzaList)
var pizzaArray = [String]()
var pizzaName = ""
var pizzaCounter = 0
while pizzaCounter < 3 {
    print("Please select which pizza you want")
    let pizzaNumber = readLine()
    if pizzaNumber == "0"{
        break
    } else {
        
        if pizzaList[pizzaNumber ?? ""] != nil {
            pizzaArray.append(pizzaList[pizzaNumber ?? ""] ?? "")
            pizzaName = pizzaList[pizzaNumber ?? ""] ?? ""
            print("Your selection is \(pizzaList[pizzaNumber ?? ""] ?? "")")
            pizzaCounter += 1
        }
        else {
            print("Wrong selection")
        }
    }
}


print(sousList)

var sousCounter = 0
var sousArray = [String]()
while sousCounter < 1 {
    print("Select sous")
    let sousNumber = readLine()

    if sousList[sousNumber ?? ""] != nil{
        print("Your selection is \(sousList[sousNumber ?? ""] ?? "")")
        sousArray.append(sousList[sousNumber ?? ""] ?? "")
        sousCounter += 1

    }else {
        print("Wrong selection")
    }

}

print(drinkList)

var drinkCounter = 0
var drinkArray = [String]()
while drinkCounter < 1 {
    print("Select Drink")
    let drinkNumber = readLine()

    if drinkList[drinkNumber ?? ""] != nil{
        print("Your selection is \(drinkList[drinkNumber ?? ""] ?? "")")
        drinkArray.append(drinkList[drinkNumber ?? ""] ?? "")
        drinkCounter += 1
    }else {
        print("Wrong selection")
    }
}

var ownerName = [String]()
var ownerAddress = [String]()
var ownerNumber = [String]()


print("Your Full name")
var name = readLine() // _ is what? readline setiri oxumaq ucundur 
if name != nil{
    ownerName.append(name ?? "")
}
print("Your Address")
var address = readLine()
if address != nil{
    ownerAddress.append(address ?? "")
}
print("Your Number")
var phoneNum = readLine()
if phoneNum != nil{
    ownerNumber.append(phoneNum ?? "")
}
var info = [ownerName, ownerAddress, ownerNumber]

//var infoPrint = String(decoding: info, as: UTF8.self)
//var infoPrint = info.joined(separator: " ")

//var infoPrint = Array(info[0].map{String($0)})
//var infoPrint = info[0].map{String($0)}

let details = ownerName + ownerAddress + ownerNumber
let stringDetails = details.joined(separator: ". ")
print("Ordered by: \(stringDetails)")

let order = pizzaArray + sousArray + drinkArray
let orderDetails = order.joined(separator: ", ")
print ("Order details, \(orderDetails)")

//var namePr:String = ownerName.joined(separator: " ")
//var addressPr:String = ownerAddress.joined(separator: " ")
//var numberPr:String = ownerNumber.joined(separator: " ")
//var printall = [ ownerName, ownerAddress, ownerNumber]
//var ishlede = printall.joined(separator: " ")



//print( "Your order is: ", "\(pizzaArray), \(sousArray), \(drinkArray) ")
//print("Ordered by: \(info)")


// print as a normal text


//var sousNumber = readLine()


//
//    if ((pizzaCount > 1)) {
//
//          //SOUS SELECTION
//          print("Would you like to add sous?")
//          print(sousList)
//          if sousList[sousNumber ?? ""] != nil {
//              print("Your selection is \(sousList[sousNumber ?? ""] ?? "" )") //why black???
//          }
//      }
//    //DRINK SELECTION
//else {
//    print("Wrong selection")
//    print("Please select which pizza you want")
//    print("Drink?")
//    print(drinkList)
//    let drinkNumber = readLine()
//    if drinkList[drinkNumber ?? ""] != nil{
//        print ("Your selection is \(drinkList[drinkNumber ?? ""] ?? "")")
//    }
//    print("Press to proceed")
//// print ("Confirm your order" + pizzaList[pizzaNumber ?? ""] ?? "", sousList[sousNumber ?? ""] ?? "" , drinkList[drinkNumber ?? ""] ?? "")
//
//
//    //USER INFO - ADDRESS, FULLNAME, PHONE
//
//    print("Your Full name")
//    var name = readLine() // _ is what?
//    print("Your Address")
//    var address = readLine()
//    print("Your Number")
//    var phoneNum = readLine()
//
//    //THANKS MESSAGE
//
//    print("Please check your order.")
//    print("Thanks for your order!")
//
//}
//
