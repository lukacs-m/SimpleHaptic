//
//  View+Extensions.swift
//
//
//  Created by Martin Lukacs on 21/01/2024.
//

import SwiftUI

struct HapticFeedbackModifier: ViewModifier {
    let hapticType: SimpleHaptic

    func body(content: Content) -> some View {
        content
            .onTapGesture {
                hapticType.trigger()
            }
    }
}

public extension View {
    func hapticFeedback(_ hapticType: SimpleHaptic) -> some View {
        self.modifier(HapticFeedbackModifier(hapticType: hapticType))
    }
}
