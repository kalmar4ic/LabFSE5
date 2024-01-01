//
//  WorksWithArr.swift
//  Lab5-6
//
//  Created by Сергей Черкашин on 25.12.2023.
//

import Foundation
import UIKit


func WorkArrInt(Choise:String, Mas:[Int], Count:Int) -> Int{
    
    var sum:Int = 0
    
    if Choise == "Сумма"{
        for index in 0...Count {
            sum += Mas[index]
        }
    } else if Choise == "Вычитание"{
        sum = Mas[0]
        for index in 1...Count {
            sum -= Mas[index]
        }
    } else if Choise == "Умножение"{
        sum = 1
        for index in 0...Count {
            sum *= Mas[index]
        }
    } else if Choise == "Деление"{
        sum = 1
        for index in 0...Count {
            sum /= Mas[index]
        }
    }
    return sum
}

func WorkArrFloat(Choise:String, Mas:[Float], Count:Int) -> Float{
    
    var sum:Float = 0
    
    if Choise == "Сумма"{
        for index in 0...Count {
            sum += Mas[index]
        }
    } else if Choise == "Вычитание"{
        sum = Mas[0]
        for index in 1...Count {
            sum -= Mas[index]
        }
    } else if Choise == "Умножение"{
        sum = 1
        for index in 0...Count {
            sum *= Mas[index]
        }
    } else if Choise == "Деление"{
        sum = 1
        for index in 0...Count {
            sum /= Mas[index]
        }
    }
    return sum
}

func WorkArrDouble(Choise:String, Mas:[Double], Count:Int) -> Double{
    
    var sum:Double = 0
    
    if Choise == "Сумма"{
        for index in 0...Count {
            sum += Mas[index]
        }
    } else if Choise == "Вычитание"{
        sum = Mas[0]
        for index in 1...Count {
            sum -= Mas[index]
        }
    } else if Choise == "Умножение"{
        sum = 1
        for index in 0...Count {
            sum *= Mas[index]
        }
    } else if Choise == "Деление"{
        sum = 1
        for index in 0...Count {
            sum /= Mas[index]
        }
    }
    return sum
}
