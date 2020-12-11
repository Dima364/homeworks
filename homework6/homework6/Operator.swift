//
//  Operator.swift
//  homework6
//
//  Created by Дмитрий Помин on 12/11/20.
//

import Foundation

enum Operator: String {
    case sum = "+"
    case subtraction = "-"
    case divide = "/"
    case multiply = "*"
    
    func compute(_ a: Double, _ b: Double) -> String {
        
        switch self {
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
