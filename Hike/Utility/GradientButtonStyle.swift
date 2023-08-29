//
//  GradientButtonStyl.swift
//  Hike
//
//  Created by Victor Catão on 05/08/23.
//

import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statemenet with Ternary Conditional Operator
                // Condition ? A : B
                configuration.isPressed ?
                // A: When user pressed the button
                LinearGradient(colors: [.customGrayMedium, .customGrayLight],
                               startPoint: .top,
                               endPoint: .bottom) :
                // B: When the Button is not pressed
                LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                               startPoint: .top,
                               endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
