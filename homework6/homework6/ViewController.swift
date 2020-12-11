//
//  ViewController.swift
//  homework6
//
//  Created by Дмитрий Помин on 10/20/20.
//

import UIKit

class ViewController: UIViewController {

// Создайте следующие проекты, в каждом из которых есть одно текстовое поле, кнопка и лейбл. При нажатии на кнопку в лейбл выводится:
//        a. Текущее значение текстфилда и все предыдущие, для которых была нажата кнопка. Разделитель — пробел. Например, в поле ввели «Никита», нажали кнопку — в лейбл выведется «Никита». В поле ввели «Антон» и нажали на кнопку — в лейбл должно вывестись «Антон Никита» и так далее.
    
   
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var textFieldOne: UITextField!
    
    @IBAction func buttonOneClick() {
        if let labelText = labelOne.text, let textFieldText = textFieldOne.text, !textFieldText.isEmpty {
                labelOne.text = labelOne.text == "Нажмите на кнопку" ? textFieldOne.text : labelText + " " + textFieldText
            
                    textFieldOne.text?.removeAll()
        
        }
        
    }
   
}

