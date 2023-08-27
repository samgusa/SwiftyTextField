//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

private struct ValidationViewModifier: ViewModifier {

    var text: Binding<String>
    var isInputValid: Bool
    var frameHeight: CGFloat = 28
    @Binding var isButtonPressed: Bool
    @State private var pathProgress = 0.0

    func body(content: Content) -> some View {
        let minimumTextLength = 0
        let contentWithImage = HStack(spacing: 10) {
            content
            if isButtonPressed {
                if isInputValid {
                    AnimatedCheckmarkView(frameSize: frameHeight)
                } else {
                    AnimatedXMark(frameSize: frameHeight)
                }
            }
        }
        return contentWithImage
            .frame(height: frameHeight)
            .onChange(of: text.wrappedValue) { newText in
                if newText.count == minimumTextLength {
                    isButtonPressed = false
                }
            }
    }
}

extension View {
    public func validationModifier(isButtonPressed: Binding<Bool>, text: Binding<String>, isInputValid: Bool) -> some View {
        self.modifier(ValidationViewModifier(text: text, isInputValid: isInputValid, isButtonPressed: isButtonPressed))
        }
}
