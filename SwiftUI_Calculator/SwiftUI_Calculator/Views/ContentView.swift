//
//  ContentView.swift
//  SwiftUI_Calculator
//
//  Created by Максим Шаптала on 04.06.2020.
//  Copyright © 2020 Максим Шаптала. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let buttons: [[CalculatorButton]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .dot, .equal]
    ]
    
    @EnvironmentObject var env: CalculatorModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 12) {
                
                HStack {
                    Spacer()
                    Text(env.result)
                        .font(.system(size: 64))
                        .foregroundColor(.white)
                }.padding()
                
                ForEach(buttons, id: \.self) { row  in
                    HStack (spacing: 12) {
                        ForEach(row, id: \.self) { (element) in
                            CalculatorButtonView(button: element)
                        }
                    }
                }
            }
        }
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(CalculatorModel())
    }
}
