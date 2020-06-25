//
//  CalculatorButtonEnum.swift
//  SwiftUICalculator
//
//  Created by Jamie Chen on 2020/6/25.
//  Copyright © 2020 Jamie Chen. All rights reserved.
//

import SwiftUI

enum CalculatorButton {
    case one, two, three, four, five, six, seven, eight, nine, zero, decimal
    case ac, plusMinus, percentage
    case devide, multiply, minus, plus, equal

    var backgroundColor: Color {
        switch self {
        case .ac, .plusMinus, .percentage:
            return Color(.gray)
        case .devide, .plus, .minus, .equal, .multiply:
            return .orange
        default:
            return Color(.darkGray)
        }
    }

    var display: String {
        switch self {
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .zero: return "0"
        case .decimal: return "."
        case .ac: return "AC"
        case .plusMinus: return "±"
        case .percentage: return "%"
        case .plus: return "+"
        case .minus: return "-"
        case .multiply: return "⨉"
        case .devide: return "÷"
        case .equal: return "="
        }
    }

    var height: CGFloat {
        return (UIScreen.main.bounds.width - 5 * 12) / 4
    }

    var width: CGFloat {
        switch self {
        case .zero:
            return (UIScreen.main.bounds.width - 4 * 12) / 2
        default:
            return height
        }
    }
}

enum Direction {
    case width
    case height
}
