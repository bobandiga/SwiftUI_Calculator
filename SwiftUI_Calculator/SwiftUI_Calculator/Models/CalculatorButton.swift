//
//  CalculatorButton.swift
//  SwiftUI_Calculator
//
//  Created by Максим Шаптала on 04.06.2020.
//  Copyright © 2020 Максим Шаптала. All rights reserved.
//

import Foundation
import SwiftUI

enum CalculatorButton {
    case zero ,one, two, three, four, five, six, seven, eight, nine
    case dot
    case ac, plusMinus, percent
    case divide, multiply, minus, plus, equal
    
    var color: Color {
        switch self {
        case .ac, .plusMinus, .percent:
            return Color(.lightGray)
        case .divide, .multiply, .minus, .plus, .equal:
            return Color(.orange)
        default:
            return Color(.darkGray)
        }
    }
    
    var title: String {
        switch self {
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
            
        case .dot: return "."
        
        case .ac: return "AC"
        case .plusMinus: return "+/-"
        case .percent: return "%"
            
        case .divide: return "/"
        case .multiply: return "*"
        case .minus: return "-"
        case .plus: return "+"
        case .equal: return "="
        
        }
    }
    
}
