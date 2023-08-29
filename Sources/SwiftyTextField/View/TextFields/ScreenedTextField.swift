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
    var errorLocation: ErrorLocation
    var textFieldType: TextFieldType
    var errorColor: Color
    var mainColor: Color
    var placeholder: String
    var errorMessage: String // Error message to show if isValid is false

    public init(
        text: Binding<String>,
        isValid: Binding<Bool>,
        errorLocation: ErrorLocation = .bottom,
        textFieldType: TextFieldType = .normal,
        errorColor: Color = .red,
        mainColor: Color = .green,
        placeholder: String,
        errorMesage: String) {
            
            self._text = text
            self._isValid = isValid
            self.errorLocation = errorLocation
            self.textFieldType = textFieldType
            self.errorColor = errorColor
            self.mainColor = mainColor
            self.placeholder = placeholder
            self.errorMessage = errorMesage
        }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if errorLocation == .top && !$isValid.wrappedValue {
                Text(errorMessage)
                    .foregroundColor(errorColor)
                    .font(.footnote)
                    .padding([.bottom, .leading], 2)
            }

            if textFieldType == .secure {
                SecureField(placeholder, text: $text)
                    .padding()
                    .background($isValid.wrappedValue ? mainColor.opacity(0.1) : errorColor.opacity(0.1))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke($isValid.wrappedValue ? mainColor : errorColor, lineWidth: 1)
                    )
                    .foregroundColor($isValid.wrappedValue ? mainColor : errorColor)
                    .animation(.easeInOut, value: isValid)
            } else {
                TextField(placeholder, text: $text)
                    .padding()
                    .background($isValid.wrappedValue ? mainColor.opacity(0.1) : errorColor.opacity(0.1))
                    .cornerRadius(8)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke($isValid.wrappedValue ? mainColor : errorColor, lineWidth: 1)
                    )
                    .foregroundColor($isValid.wrappedValue ? mainColor : errorColor)
                    .keyboardType(textFieldType == .phoneNumber ? .numberPad : .default)
                    .animation(.easeInOut, value: isValid)
            }

            if errorLocation == .bottom && !$isValid.wrappedValue {
                Text(errorMessage)
                    .foregroundColor(errorColor)
                    .font(.footnote)
                    .padding([.top, .leading], 2)
            }
        }
    }
}
