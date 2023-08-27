//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

public struct ScreenedTextField: View {

    @Binding var text: String
    @Binding var isValid: Bool // Condition to determine validity
    var errorLocation: ErrorLocation = .bottom
    var errorColor: Color = .red
    var mainColor: Color = .green
    var placeholder: String
    var errorMessage: String // Error message to show if isValid is false
    var validationHandler: ((String) -> Bool)?

    public init(
        text: Binding<String>,
        isValid: Binding<Bool>,
        errorLocation: ErrorLocation = .bottom,
        errorColor: Color = .red,
        mainColor: Color = .green,
        placeholder: String,
        errorMesage: String,
        validationHandler: ((String) -> Bool)? = nil) {
            
            self._text = text
            self._isValid = isValid
            self.errorLocation = errorLocation
            self.errorColor = errorColor
            self.mainColor = mainColor
            self.placeholder = placeholder
            self.errorMessage = errorMesage
            self.validationHandler = validationHandler
        }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if errorLocation == .top && !$isValid.wrappedValue {
                Text(errorMessage)
                    .foregroundColor(errorColor)
                    .font(.footnote)
                    .padding([.bottom, .leading], 2)
            }

            TextField(placeholder, text: $text)
                .padding()
                .background($isValid.wrappedValue ? mainColor.opacity(0.1) : errorColor.opacity(0.1))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke($isValid.wrappedValue ? mainColor : errorColor, lineWidth: 1)
                )
                .foregroundColor($isValid.wrappedValue ? mainColor : errorColor)
                .animation(.easeInOut, value: isValid)

            if errorLocation == .bottom && !$isValid.wrappedValue {
                Text(errorMessage)
                    .foregroundColor(errorColor)
                    .font(.footnote)
                    .padding([.top, .leading], 2)
            }
        }
    }
}
