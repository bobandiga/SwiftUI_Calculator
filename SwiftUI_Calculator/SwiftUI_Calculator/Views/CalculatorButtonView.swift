//
//  CalculatorButtonView.swift
//  SwiftUI_Calculator
//
//  Created by Максим Шаптала on 04.06.2020.
//  Copyright © 2020 Максим Шаптала. All rights reserved.
//

import SwiftUI

struct CalculatorButtonView: View {
    
    var button: CalculatorButton
    @EnvironmentObject var env: CalculatorModel
    
    init(button: CalculatorButton) {
        self.button = button
    }
    
    var body: some View {
        Button(action: {
            self.env.receiveOutput(button: self.button)
        }, label: {
            Text(self.button.title)
                .font(.system(size: 32))
                .frame(width: width(), height: height())
                .foregroundColor(Color.white)
                .background(button.color)
                .cornerRadius(height())
        })
    }
    
    fileprivate func width() -> CGFloat {
        
        if button == .zero {
            return ((UIScreen.main.bounds.width - 4 * 12) / 4) * 2
        }
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
    
    fileprivate func height() -> CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }
}
