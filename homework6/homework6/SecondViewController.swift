//
//  SecondViewController.swift
//  homework6
//
//  Created by Дмитрий Помин on 10/20/20.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var textFieldOne: UITextField!
    /*
    // MARK: - Navigation
     При вводе целого числа в текстовое поле — значение 2 в степени этого числа. Если в текстовом поле не введено целое число, то выводится надпись «Введите целое число в строку».
    }
    */

    @IBAction func buttonOne(_ sender: UIButton) {
        if let i = Int(textFieldOne.text!){
            labelOne.text = "\(Int(pow(2, Double(i))))"
        }else{
            labelOne.text = "Введите целое число в строку"
        }
        textFieldOne.text?.removeAll()
    }
    
}
