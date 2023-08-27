//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

internal struct AnimatedXMark: View {
    @State var pathProgress: Double = 0.0
    var frameSize: CGFloat

    var body: some View {
        Circle()
            .fill(.red)
            .overlay {
                XShape()
                    .trim(from: 0.0, to: pathProgress)
                    .stroke(Color.white, style: StrokeStyle(lineWidth: frameSize / 10, lineCap: .round, lineJoin: .round))
                    .animation(.easeInOut(duration: 1), value: pathProgress)
                    .onAppear {
                        self.pathProgress = 1.0
                    }
                    .frame(width: frameSize / 3, height: frameSize / 3, alignment: .center)
            }
            .frame(width: frameSize, height: frameSize)
    }
}
