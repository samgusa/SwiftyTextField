//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

internal struct Checkmark: Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.size.width
        let height = rect.size.height

        var path = Path()
        path.move(to: .init(x: 0 * width, y: 0.5 * height))
        path.addLine(to: .init(x: 0.4 * width, y: 1.0 * height))
        path.addLine(to: .init(x: 1.0 * width, y: 0 * height))
        return path
    }
}
