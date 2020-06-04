//
//  CalculatorModel.swift
//  SwiftUI_Calculator
//
//  Created by Максим Шаптала on 04.06.2020.
//  Copyright © 2020 Максим Шаптала. All rights reserved.
//

import Foundation
 
class CalculatorModel: ObservableObject {
    @Published var result = "0"
    
    func receiveOutput(button: CalculatorButton) {
        result.append(button.title)
    }
    
}
