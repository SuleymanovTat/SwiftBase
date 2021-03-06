//
//  main.swift
//  SwiftBase
//
//  Created by Ильмир Сулейманов on 15.03.2022.
//
import Foundation

//let константы
//var переменны
var a = 1
var b = 2
let name = 102
var c = a + b + name
let userName = "Ivan"
print("Hello, World! ", c)
newState()
print(newState2())

//func
func newState(){
    print("newState")
}
//func return
func newState2() -> Int{
  return 10
}
//типы данных int разные Int
let numberA: Int = 1
let numberAA: UInt = 1
let numberAAA: UInt64 = 1
let isNumber: Bool = true
let numberC: Double = 5.5
let numberF: Float = 5.5
let numberF64: Float64 = 5.5
let str: String = "100"
print(str)
print("number \(numberA)")

//условия
if isNumber {
    print("true")
} else {
    print("false")
}
//примедения типов
let aa = a + Int(numberF)
print("aa ", aa)


//Базовые операторы
//унарные: префиксные -а, !b постфиксные с!
//бинарные:  1 + 2
//тернарные: a ? b : c  (if a { b }else{b}
//операторы замкнутого/закрытого диапозона (a...b)
//операторы полузамкнутого/полузакрытого диапозона (a..<b)

//Условия if else
let isDay  = true
if isDay {
    print("yes")
} else {
    print("not")
}

//Условия when
let day = "monday"
switch day{
case "monday": print("work monday")
    fallthrough
case "friday": print("work friday")
case "sunday": print("home sunday")
default: print("non")
}

//Циклы
//for in
print("\n")
let count  = 1...7
for number  in count{
    print("number ", number)
}

//while
print("\n")
var number = 10
while number > 0 {
    number -= 1
    print(number)
}
print("finish")

//repeat while
print("\n")
repeat{
    number += 1
    print(number)
} while number < 6
print("finish")

//break and  continue

//tuple кортежи

let mTople = ("name", "Ivan", "age", 20)
print(mTople.0)
print(mTople.1)
print(mTople.2)
print(mTople.3)

print("\n")
var (name2, ago2) = ( "Casha",  22)
print(name2)
print(ago2)

print("\n")
let user = (userName: "Casha", userAge:  22)
print(user.userName)
print(user.userAge)


//Опциональные типы данных nil
var phoneNumber: String?
if phoneNumber == nil{
    phoneNumber = "66 66 66"
}else{
    phoneNumber  = "88 88 88"
}
print(phoneNumber!)

var userId: Int? = 10
if userId == nil{
    print("nil")
}else{
    userId! += 1
}
print(userId!)

var mName: String? = nil
mName = "str"
//1
print("\n1\n")
if let safeName = mName{
    print("safeName ", safeName)
}else{
    print("safeName nil")
}
//2
print("\n2\n")
var mAge: String = "12"
if let safeAge = Int(mAge){
    print("safeAge ",safeAge)
}
//3
print("\n3\n")
var mLastName: String? = "last name"
print(mLastName ?? "result nil")
//4
print("\n4\n")
var mNumber2: Int! = nil
mNumber2 = 10
print(mNumber2!)


//структора данных
//array(массив)

var listPeople  = Array<String>()
listPeople.append("Ivan")
listPeople.append("Kiril")
print(listPeople)

var listBook = [String]()
listBook.append("android book")
listBook.append("ios book")

var listBoots = ["nike", "reebok"]
listBoots.append("red")
listBoots.insert("blue", at: 0)
listBoots.remove(at: 1)
print(listBoots[0])
print(listBoots)

for item in listBoots {
    print("item \(item)")
}
print("\n______")
for (_, value) in listBoots.enumerated() {
    print("item \(value)")
}
//set(множество)
var setBook = Set<String>()
setBook.insert("a")
setBook.insert("b")
setBook.insert("c")
setBook.insert("c")
setBook.insert("c")

for item in setBook {
    print("item " + item)
}
var setBook2: Set = ["a", "b"]

//map(словари)

var map = ["ivan": 10, "kole": 10]
print("map ", map["ivan"]!)

for (key, value) in map {
    print("key ", key, " value ", value)
}

//func

func printHello() {
    print("hello")
}
func printNumber(number: Int) {
    print("number \(number)")
}
func returnNumber(number: Int) -> Int{
   return number * 2
}
printHello()
printNumber(number: 90)
print("return \(returnNumber(number: 10))")

//array
func getUsers() ->[String]{
    return ["Timur", "Alsu", "Ramil"]
}
//map
func getAddress() ->[String: Int]{
    return ["mira": 1, "chulman": 60]
}
//tuple
func getPoint() ->(x: Double, y: Double){
    return (x: 10, y: 10)
}


print(getUsers()[0])
print(getAddress()["chulman"]!)
print(getPoint().x, getPoint().y)


//inout
func write(number : inout Int){
    number*=2
}

var sizeCar = 10
write(number: &sizeCar)
print(sizeCar)

//Клоужеры. замыкания, ананимные классы

let driving = {
    print("вождение")
}
driving()

let driving2 = {(place : String ) in
    print("вождение", place )
}
driving2("place")

let payment = {(userName : String ) -> String in
    print("userName", userName)
    return userName
}
print(payment("Ivan"))


func travel(action:() -> Void){
    print("start")
    action()
    print("end")
}
print("\n")
travel {
    print("travel")
}

//enum перечисления
enum Status{
    case success(str : String)
    case failure
}

print(Status.success)
print(Status.failure)

print(Status.success(str: "ok"))
print(Status.success)

enum Phone: String{
    case Apple = "iphone 12"
    case Lg = "lg 2022"
    case Nokia = "Nokia 2022"
    case Realmi = "Realmi 2022"
}

print(Phone.Apple.rawValue)
let isApple = Phone.Apple.rawValue == "iphone 12"
print(isApple)
print(Phone.Lg)


//класс

class User{
    let id: Int
    var name: String
    
    init(id: Int, name: String){
        self.id = id
        self.name = name
    }
}

let newUser = User(id: 1, name: "Ivan")
print(newUser.id)
print(newUser.name)
newUser.name = "asdasd"

//структара

//value type Int, String, Bool, struct, array
//reference type enum, class
print()
struct Phone2{
    var name: String
    let model:String
}


var phone2 = Phone2(name: "x power", model: "lg")
phone2.name = "x power 2"
print(phone2)

//Свойства типов
print()
class Car{
    var name: String
    var number: String
    
    init(name: String, number: String){
        self.name = name
        self.number = number
    }
    
    func move(){
        print("move")
    }
}

class BMW: Car{
    
    
}
var bmw = BMW(name: "x5", number: "x888xx 888")
print(bmw.name)
print(bmw.number)

//extension Расширения
print()
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let dlina = 5.5
print(dlina.km)

print()
//protocol interface
protocol IBuy{
    var price: Int { get set }
}

class Computer: IBuy{
    var price = 100
}
class Book: IBuy{
    var price = 10
}

func buyObject(item: IBuy){
    print("item ", item.price)
}

buyObject(item: Computer())
buyObject(item: Book())



