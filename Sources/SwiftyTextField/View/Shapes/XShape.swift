//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

internal struct XShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            let startX: CGFloat = rect.minX
            let startY: CGFloat = rect.minY
            let endX: CGFloat = rect.maxX
            let endY: CGFloat = rect.maxY

            // Draw the \ (backslash) line of the X
            path.move(to: CGPoint(x: startX, y: startY))
            path.addLine(to: CGPoint(x: endX, y: endY))

            // Draw the / (forward slash) line of the X
            path.move(to: CGPoint(x: startX, y: endY))
            path.addLine(to: CGPoint(x: endX, y: startY))
        }
    }
}
