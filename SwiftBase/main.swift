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

