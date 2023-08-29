//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

public struct HideSeeTextField: View {
    @Binding var text: String
    @State private var isSecure: Bool = true
    var placeholder: String
    var foregroundColor: Color

    public init(text: Binding<String>,
                placeholder: String,
                foregroundColor: Color = .gray) {

        self._text = text
        self.placeholder = placeholder
        self.foregroundColor = foregroundColor
    }

    public var body: some View {
        HStack {
            Group {
                if isSecure {
                    SecureField(placeholder, text: $text)
                } else {
                    TextField(placeholder, text: $text)
                }

                Button(action: {
                    isSecure.toggle()
                }, label: {
                    Image(systemName: isSecure ? "eye.slash" : "eye" )
                })
            }
        }
        .padding(.bottom, 7)
        .foregroundStyle(foregroundColor)
    }
}
