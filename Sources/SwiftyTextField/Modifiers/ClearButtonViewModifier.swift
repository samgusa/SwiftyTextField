//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

private struct ClearButtonViewModifier: ViewModifier {

    @Binding var text: String

    // Button appearance customization
    var buttonType: ButtonType
    var buttonImage: String = "xmark.circle.fill"
    var buttonText: String = "Clear"
    var forgroundColor: Color
    
    // Clear handling
    var onClearHandler: (() -> Void)? = nil

    public func body(content: Content) -> some View {
        ZStack {
            content
            HStack {
                Spacer()
                Button {
                    text.removeAll()
                    /// Call the optional clear handler to allow
                    /// for further customization.
                    onClearHandler?()
                } label: {
                    if buttonType == .image {
                        Image(systemName: buttonImage)
                    } else {
                        Text(buttonText)
                    }
                }
                .foregroundColor(forgroundColor)
                .padding(.trailing, 10)
                .buttonStyle(.plain)
            }
            /// Only show the button if there's actually text input.
            .opacity(text.isEmpty ? 0.0 : 1.0)
        }
    }
}


public extension View {
    func clearTextFieldViewModifier(text: Binding<String>,
                                           buttonType: ButtonType = .image,
                                           buttonImage: String = "xmark.circle.fill",
                                           buttonText: String = "Clear",
                                           foregroundColor: Color = Color(.placeholderText),
                                           onClearHandler:  (() -> Void)? = nil) -> some View {

        // Use the internal cases here
               let internalButtonType: ButtonType
               switch buttonType {
                   case .image:
                       internalButtonType = ButtonType.internalImage
                   case .text:
                       internalButtonType = ButtonType.internalText
               }

        return modifier(ClearButtonViewModifier(text: text,
                                          buttonType: internalButtonType,
                                          buttonImage: buttonImage,
                                          buttonText: buttonText,
                                          forgroundColor: foregroundColor,
                                          onClearHandler: onClearHandler))
    }
}
