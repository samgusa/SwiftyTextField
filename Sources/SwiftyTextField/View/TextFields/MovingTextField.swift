//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

public struct MovingTextField: View {

    // Fields
    var image: String
    var placeholder: String
    var textFieldType: TextFieldType
    var imageLocation: ImageLocation
    var restColor: Color
    var activeColor: Color
    @Binding var text: String
    @Namespace private var animation

    public init(image: String,
                placeholder: String,
                textFieldType: TextFieldType = .normal,
                imageLocation: ImageLocation = .left,
                restColor: Color = .gray,
                activeColor: Color = .primary,
                text: Binding<String>) {

        self.image = image
        self.placeholder = placeholder
        self.textFieldType = textFieldType
        self.imageLocation = imageLocation
        self.restColor = restColor
        self.activeColor = activeColor
        self._text = text
    }

    public var body: some View {
        VStack(spacing: 6) {
            HStack(alignment: .bottom) {
                if imageLocation == .left {
                    Image(systemName: image)
                        .font(.system(size: 22))
                        .foregroundColor(text == "" ? restColor : activeColor)
                        .frame(width: 35)
                }

                VStack(alignment: .leading, spacing: 6) {
                    if text != "" {
                        Text(placeholder)
                            .font(.caption)
                            .fontWeight(.heavy)
                            .matchedGeometryEffect(id: placeholder, in: animation)
                    }

                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                        if text == "" {
                            Text(placeholder)
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundColor(restColor)
                                .matchedGeometryEffect(id: placeholder, in: animation)
                        }
                        if textFieldType == .secure {
                            SecureField("", text: $text)
                                .foregroundColor(activeColor)
                        } else {
                            TextField("", text: $text)
                                .foregroundColor(activeColor)
                                .keyboardType(textFieldType == .phoneNumber ? .numberPad : .default)
                        }
                    }
                }

                if imageLocation == .right {
                    Image(systemName: image)
                        .font(.system(size: 22))
                        .foregroundColor(text == "" ? restColor : activeColor)
                        .frame(width: 35)
                }
            }
            if text == "" {
                Divider()
                    .overlay {
                        text == "" ? restColor : activeColor
                    }
            }
        }
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
        .padding(.horizontal)
        .padding(.top)
        .animation(.linear.speed(3), value: text)
    }
}
