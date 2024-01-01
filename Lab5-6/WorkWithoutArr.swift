//
//  WorkWithoutArr.swift
//  Lab5-6
//
//  Created by Сергей Черкашин on 25.12.2023.
//

import Foundation
import UIKit

func WorkWithoutArrInt(Choise:String, Count:Int, Maxi:Int, Mini:Int) -> Int{
    var sum:Int = 0
    
    if Choise == "Сумма"{
        for _ in 1...Count {
            let rand = Int(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + (Mini - 1)
            print(rand)
            sum += rand
        }
    } else if Choise == "Вычитание"{
        sum = Int(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + (Mini - 1)
        for _ in 2...Count {
            let rand = Int(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + (Mini - 1)
            print(rand)
            sum -= rand
        }
    }else if Choise == "Умножение"{
        sum = 1
        for _ in 1...Count {
            let rand = Int(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + (Mini - 1)
            print(rand)
            sum *= rand
        }
    } else if Choise == "Деление"{
        sum = 1
        for _ in 1...Count{
            let rand = Int(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + (Mini - 1)
            print(rand)
            sum /= rand
        }
    }
    return sum
}

func WorkWithoutArrFloat(Choise:String, Count:Int, Maxi:Int, Mini:Int) -> Float{
    var sum:Float = 0
    
    if Choise == "Сумма"{
        for _ in 1...Count {
            let randomFloat = Float.random(in: 0.0..<1.0)
            let rand = Float(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Float((Mini - 1)) + randomFloat
            print(rand)
            sum += rand
        }
    } else if Choise == "Вычитание"{
        let randomFloat = Float.random(in: 0.0..<1.0)
        sum = Float(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Float((Mini - 1)) + randomFloat
        for _ in 2...Count {
            let randomFloat = Float.random(in: 0.0..<1.0)
            let rand = Float(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Float((Mini - 1)) + randomFloat
            print(rand)
            sum -= rand
        }
    }else if Choise == "Умножение"{
        sum = 1
        for _ in 1...Count {
            let randomFloat = Float.random(in: 0.0..<1.0)
            let rand = Float(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Float((Mini - 1)) + randomFloat
            print(rand)
            sum *= rand
        }
    } else if Choise == "Деление"{
        sum = 1
        for _ in 1...Count{
            let randomFloat = Float.random(in: 0.0..<1.0)
            let rand = Float(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Float((Mini - 1)) + randomFloat
            print(rand)
            sum /= rand
        }
    }
    return sum
}

func WorkWithoutArrDouble(Choise:String, Count:Int, Maxi:Int, Mini:Int) -> Double{
    var sum:Double = 0
    
    if Choise == "Сумма"{
        for _ in 1...Count {
            let randomDouble = Double.random(in: 0.0..<1.0)
            let rand = Double(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Double((Mini - 1)) + randomDouble
            print(rand)
            sum += rand
        }
    } else if Choise == "Вычитание"{
        let randomDouble = Double.random(in: 0.0..<1.0)
        sum = Double(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Double((Mini - 1)) + randomDouble
        for _ in 2...Count {
            let randomDouble = Double.random(in: 0.0..<1.0)
            let rand = Double(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Double((Mini - 1)) + randomDouble
            print(rand)
            sum -= rand
        }
    }else if Choise == "Умножение"{
        sum = 1
        for _ in 1...Count {
            let randomDouble = Double.random(in: 0.0..<1.0)
            let rand = Double(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Double((Mini - 1)) + randomDouble
            print(rand)
            sum *= rand
        }
    } else if Choise == "Деление"{
        sum = 1
        for _ in 1...Count{
            let randomDouble = Double.random(in: 0.0..<1.0)
            let rand = Double(arc4random_uniform(UInt32(Maxi - (Mini - 1))) + 1) + Double((Mini - 1)) + randomDouble
            print(rand)
            sum /= rand
        }
    }
    print(sum, "---")
    return sum
}
