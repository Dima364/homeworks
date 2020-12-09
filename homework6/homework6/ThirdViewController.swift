//
//  ThirdViewController.swift
//  homework6
//
//  Created by Дмитрий Помин on 10/20/20.
//

import UIKit

class ThirdViewController: UIViewController {

    enum Operator: String {
        case sum = "+"
        case subtraction = "-"
        case divide = "/"
        case multiply = "*"
        
        func compute(_ a: Double, _ b: Double, _ type: Operator) -> String {
            
            switch type {
            case .sum:
                return String(a + b)
            case .subtraction:
                return String(a - b)
            case .divide:
                if b == 0 {
                    return "Деление на  ноль"
                }else{return String(a / b)}
            case .multiply:
                return String(a * b)
            }
        }
    }
    
    @IBOutlet weak var firstOperand: UITextField!
    
    
    @IBOutlet weak var secondOperand: UITextField!
    /*
    // MARK: - Navigation
     Для этой задачи сделайте три текстовых поля. По сути, это аналог калькулятора :) В первое поле вводится целое число, во второе — оператор (минус, плюс, умножить, делить), в третье поле — второе число. При нажатии на кнопку операция из второго поля применяется к числу из первого и третьего поля. Если где-то введены некорректные данные, в лейбл должно вывестись «Некорректные данные».
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
  
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var operatorField: UITextField!
    
    func error() {
        labelOne.text = "Введите корректные данные"
    }
    
    @IBAction func compute() {
        if let firstOperandText = firstOperand.text, let secondOperandText = secondOperand.text, let a = Double(firstOperandText), let b = Double(secondOperandText), let operatorText = operatorField.text{
            
            if let operatorInstance = Operator(rawValue: operatorText){
                labelOne.text = operatorInstance.compute(a, b, operatorInstance)
            } else{
                error()
            }
        }else{
            error()
        }
    }
    
 
}
