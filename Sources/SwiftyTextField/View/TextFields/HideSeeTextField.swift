//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

public struct HideSeeTextField: View {
    @Binding var text: String
    @State var isSecure: Bool = true
    var titleKey: String
    var foregroundColor: Color = .gray

    public init(text: Binding<String>, isSecure: Bool = true, titleKey: String, foregroundColor: Color = .gray) {
        self._text = text
        self._isSecure = State(initialValue: isSecure)
        self.titleKey = titleKey
        self.foregroundColor = foregroundColor
    }

    public var body: some View {
        HStack {
            Group {
                if isSecure {
                    SecureField(titleKey, text: $text)
                } else {
                    TextField(titleKey, text: $text)
                }

                Button(action: {
                    isSecure.toggle()
                }, label: {
                    Image(systemName: isSecure ? "eye.slash" : "eye" )
                })
            }
        }
        .padding(.bottom, 7)
//        .overlay(
//            Rectangle().frame(width: nil, height: 1, alignment: .bottom),
//            alignment: .bottom
//        )
        .foregroundStyle(foregroundColor)
    }
}
