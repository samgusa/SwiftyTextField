//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

private struct ValidationViewModifier: ViewModifier {

    var text: Binding<String>
    var showValidImage: Bool
    var frameHeight: CGFloat
    @Binding var showImage: Bool
    @State private var pathProgress = 0.0

    func body(content: Content) -> some View {
        let minimumTextLength = 0
        let contentWithImage = HStack(spacing: 10) {
            content
            if showImage {
                if showValidImage {
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
                    showImage = false
                }
            }
    }
}

public extension View {
    func validationModifier(text: Binding<String>,
                            showValidImage: Bool,
                            frameHeight: CGFloat = 28,
                            showImage: Binding<Bool>) -> some View {

        self.modifier(ValidationViewModifier(text: text,
                                             showValidImage: showValidImage,
                                             frameHeight: frameHeight,
                                             showImage: showImage))
    }
}
