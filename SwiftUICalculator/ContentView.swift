//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by Jamie Chen on 2020/6/25.
//  Copyright © 2020 Jamie Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    let buttonText: [[CalculatorButton]] = [
        [.ac, .plusMinus, .percentage, .devide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus],
        [.zero, .decimal, .equal]
    ]

    var body: some View {

        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)

            VStack (spacing: 10) {
                HStack {
                    Spacer()
                    Text("43").foregroundColor(.white).font(.system(size: 64)).padding()
                }

                ForEach(buttonText, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { element in
                            Button(action: {
                                print(element.display)
                            }, label: {
                                Text(element.display)
                                .font(.system(size: 36))
                                .fontWeight(.semibold)
                                .frame(width: element.width, height: element.height, alignment: .center)
                                .foregroundColor(.white)
                                .background(element.backgroundColor)
                                .cornerRadius(element.height/2)
                            })
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
