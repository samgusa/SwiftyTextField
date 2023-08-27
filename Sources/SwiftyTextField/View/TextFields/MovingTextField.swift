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
    var title: String
    var textFieldType: TextFieldType = .normal
    var imageLocation: ImageLocation = .left
    var restColor: Color = .gray
    var activeColor: Color = .primary
    @Binding var value: String
    @Namespace private var animation

    public var body: some View {
        VStack(spacing: 6) {
            HStack(alignment: .bottom) {
                if imageLocation == .left {
                    Image(systemName: image)
                        .font(.system(size: 22))
                        .foregroundColor(value == "" ? restColor : activeColor)
                        .frame(width: 35)
                }

                VStack(alignment: .leading, spacing: 6) {
                    if value != "" {
                        Text(title)
                            .font(.caption)
                            .fontWeight(.heavy)
                            .matchedGeometryEffect(id: title, in: animation)
                    }

                    ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                        if value == "" {
                            Text(title)
                                .font(.caption)
                                .fontWeight(.heavy)
                                .foregroundColor(restColor)
                                .matchedGeometryEffect(id: title, in: animation)
                        }
                        if textFieldType == .secure {
                            SecureField("", text: $value)
                        } else {
                            TextField("", text: $value)
                                .keyboardType(textFieldType == .phoneNumber ? .numberPad : .default)
                        }
                    }
                }

                if imageLocation == .right {
                    Image(systemName: image)
                        .font(.system(size: 22))
                        .foregroundColor(value == "" ? restColor : activeColor)
                        .frame(width: 35)
                }
            }
            if value == "" {
                Divider()
            }
        }
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: -5, y: -5)
        .padding(.horizontal)
        .padding(.top)
        .animation(.linear.speed(3), value: value)
    }
}
