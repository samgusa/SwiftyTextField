//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

struct HideSeeTextField: View {
    @Binding var text: String
    @State var isSecure: Bool = true
    var titleKey: String
    var foregroundColor: Color = .gray

    var body: some View {
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
