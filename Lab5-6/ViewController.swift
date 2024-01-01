//
//  ViewController.swift
//  Lab5-6
//
//  Created by Сергей Черкашин on 21.12.2023.
//

import UIKit

class ViewController: UIViewController {

    var textField: UITextField!
    var maxField: UITextField!
    var minField: UITextField!
    var switchControl: UISwitch!
    var generatedArray: [Int] = []
    var chislo: [Int] = [2]
    var segmentControll = UISegmentedControl()
    var choisemath = UISegmentedControl()
    var MenuArray = ["Int", "Float", "Double"]
    var MenuMath = ["Сумма", "Вычитание", "Умножение", "Деление"]
    var choise:String = ""
    var chh: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField = UITextField(frame: CGRect(x: 100, y: 50, width: 200, height: 40))
        textField.placeholder = "Введите кол-во элементов массива"
        textField.borderStyle = .roundedRect
        textField.keyboardType = .numberPad
        view.addSubview(textField)
        
        maxField = UITextField(frame: CGRect(x: 100, y: 95, width: 200, height: 40))
        maxField.placeholder = "Максимально число"
        maxField.borderStyle = .roundedRect
        maxField.keyboardType = .numberPad
        view.addSubview(maxField)
        
        minField = UITextField(frame: CGRect(x: 100, y: 140, width: 200, height: 40))
        minField.placeholder = "Минимальное число"
        minField.borderStyle = .roundedRect
        minField.keyboardType = .numberPad
        view.addSubview(minField)
        
        let button = UIButton(type: .system)
        button.setTitle("Вычислить", for: .normal)
        button.frame = CGRect(x: 100, y: 180, width: 200, height: 50)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button)
        
        switchControl = UISwitch(frame: CGRect(x: 15, y: 55, width: 0, height: 0))
        switchControl.isOn = false
        switchControl.addTarget(self, action: #selector(switchValueChanged(_:)), for: .valueChanged)
        view.addSubview(switchControl)
        
        self.segmentControll = UISegmentedControl(items: self.MenuArray)
        self.segmentControll.frame = CGRect(x: 40, y: 230, width: 300, height: 50)
        self.view.addSubview(self.segmentControll)
        
        self.segmentControll.addTarget(self, action: #selector(SelectedValue), for: .valueChanged)
        
        self.choisemath = UISegmentedControl(items: self.MenuMath)
        self.choisemath.frame = CGRect(x: 40, y: 290, width: 300, height: 50)
        self.view.addSubview(self.choisemath)
        
        self.choisemath.addTarget(self, action: #selector(SelectedMath), for: .valueChanged)
        
    }
    
    @objc func SelectedValue(target: UISegmentedControl){
        if target == self.segmentControll{
            let index = target.selectedSegmentIndex
            choise = self.MenuArray[index]
        }
    }
    
    
    @objc func SelectedMath(target: UISegmentedControl){
        if target == self.choisemath{
            let index = target.selectedSegmentIndex
            chh = self.MenuMath[index]
        }
    }
    
    @objc func switchValueChanged(_ sender: UISwitch){
        if sender.isOn {
            chislo.removeAll()
            chislo.append(1)
        } else {
            chislo.removeAll()
            chislo.append(2)
        }
    }

    @objc func buttonAction(sender: UIButton!) {
        
        if chh == ""{
            output(0, 0, 0, 0, ERROR: 3)
        }
        if let ch = maxField.text, let ch1 = minField.text, ch1 > ch{
            output(0, 0, 0, 0, ERROR: 1)
        }
        if let text = textField.text, let number = Int(text), number > 100000000{
            output(0, 0, 0, 0, ERROR: 2)
        }
        if let text = textField.text, let number = Int(text), let ch = maxField.text, let Max = Int(ch), let ch1 = minField.text, let Min = Int(ch1), chislo[0] == 1 {
            
            if choise == "Int"{
                var Arr: [Int] = []
                
                let timer = ParkBenchTimer() // Генерируется время создания массива
                for _ in 1...number{
                    let rand = Int(arc4random_uniform(UInt32(Max - (Min - 1))) + 1) + (Min - 1)
                    Arr.append(rand)
                }
                let time = timer.stop()
                
                let count:Int = (Arr.count - 1)
                var sum:Int = 0
                
                let timer1 = ParkBenchTimer() // Генерируется выполнение самой программы
                sum = WorkArrInt(Choise: chh, Mas: Arr, Count: count)
                let time1 = timer1.stop()
                
                output(chh, sum, time, time1, ERROR: 0)
                
            } else if choise == "Float"{
                var Arr: [Float] = []
                
                let timer = ParkBenchTimer() // Генерируется время создания массива
                for _ in 1...number{
                    let rand = Int(arc4random_uniform(UInt32(Max - (Min - 1))) + 1) + (Min - 1)
                    let addr:Float
                    let randomFloat = Float.random(in: 0.0..<1.0)
                    addr = Float(rand) + randomFloat
                    Arr.append(addr)
                }
                let time = timer.stop()
                
                let count:Int = (Arr.count - 1)
                var sum:Float = 0
                
                let timer1 = ParkBenchTimer() // Генерируется выполнение самой программы
                sum = WorkArrFloat(Choise: chh, Mas: Arr, Count: count)
                let time1 = timer1.stop()
                
                output(chh, sum, time, time1, ERROR: 0)
            } else {
                var Arr: [Double] = []
                
                let timer = ParkBenchTimer() // Генерируется время создания массива
                for _ in 1...number{
                    let rand = Int(arc4random_uniform(UInt32(Max - (Min - 1))) + 1) + (Min - 1)
                    let addr:Double
                    let randomFloat = Double.random(in: 0.0..<1.0)
                    addr = Double(rand) + randomFloat
                    Arr.append(addr)
                }
                let time = timer.stop()
                
                let count:Int = (Arr.count - 1)
                var sum:Double = 0
                
                let timer1 = ParkBenchTimer() // Генерируется выполнение самой программы
                sum = WorkArrDouble(Choise: chh, Mas: Arr, Count: count)
                let time1 = timer1.stop()
                
                output(chh, sum, time, time1, ERROR: 0)
            }
            
            
        } else if let text = textField.text, let number = Int(text), let ch = maxField.text, let Max = Int(ch), let ch1 = minField.text, let Min = Int(ch1), chislo[0] == 2{
            
            if choise == "Int"{
                
                let timer = ParkBenchTimer() // Генерируется время выполнение программы без массива
                let sum = WorkWithoutArrInt(Choise: chh, Count: number, Maxi: Max, Mini: Min)
                let time = timer.stop()
                
                output(chh, sum, time, 0, ERROR: 0)
                
            } else if choise == "Float"{
                let timer = ParkBenchTimer() // Генерируется время выполнение программы без массива
                let sum = WorkWithoutArrFloat(Choise: chh, Count: number, Maxi: Max, Mini: Min)
                let time = timer.stop()
                
                output(chh, sum, time, 0, ERROR: 0)
                
            } else if choise == "Double"{
                
                let timer = ParkBenchTimer() // Генерируется время выполнение программы без массива
                let sum = WorkWithoutArrDouble(Choise: chh, Count: number, Maxi: Max, Mini: Min)
                let time = timer.stop()
                
               output(chh, sum, time, 0, ERROR: 0)
            }
            
        } else {
            output(0, 0, 0, 0, ERROR: 3)
            
        }
        
        func output<MyChoise, summa, Ttime, Ttime1>(_ MyCh:MyChoise, _ sm:summa, _ T:Ttime, _ T1:Ttime1, ERROR:Int){
            if chislo[0] == 1, ERROR == 0{
                let alert = UIAlertController(title: " \(MyCh) массива и время выполнения", message: "Cумма: \(sm) \n Время выполнения: \(T1) \n Время генерации: \(T)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            } else if chislo[0] == 2{
                
                let alert = UIAlertController(title: "\(MyCh) цифр и время выполнения", message: "Сумма: \(sm) \n Время выполнения: \(T)", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            }
            if ERROR == 1{
                let alert = UIAlertController(title: "Ошибка", message: "Минимальное число больше максимума, повторите попытку", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
                
            } else if ERROR == 2{
                let alert = UIAlertController(title: "Ошибка", message: "Невожможно выполнить вычисление, когда значений больше 100 000 000", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            } else if ERROR == 3{
                let alert = UIAlertController(title: "Ошибка", message: "Произошла ошибка, попробуйте ещё раз", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
        }
    }
}

