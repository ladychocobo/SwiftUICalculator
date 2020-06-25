//
//  ContentView.swift
//  SwiftUICalculator
//
//  Created by Jamie Chen on 2020/6/25.
//  Copyright © 2020 Jamie Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    let buttonText = [
        ["AC", "±", "%", "÷"],
        ["7", "8", "9", "⨉"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]

    var buttonSize: CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }

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
                            Text(element)
                                .font(.system(size: 32))
                                .frame(width: self.buttonSize, height: self.buttonSize, alignment: .center)
                                .foregroundColor(.white)
                                .background(Color.yellow)
                                .cornerRadius(self.buttonSize/2)
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
