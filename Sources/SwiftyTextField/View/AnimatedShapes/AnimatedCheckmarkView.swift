//
//  SwiftUIView.swift
//  
//
//  Created by Sam Greenhill on 8/26/23.
//

import SwiftUI

internal struct AnimatedCheckmarkView: View {

    var frameSize: CGFloat
    var animationDuration: Double = 0.75
    @State private var outerTrimEnd: CGFloat = 0
    @State private var innerTrimEnd: CGFloat = 0
    @State private var circleOpacity: CGFloat = 0

    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: outerTrimEnd)
                .stroke(Color.green, style: StrokeStyle(lineWidth: frameSize / 10, lineCap: .round, lineJoin: .round))
                .rotationEffect(.degrees(-90))

            Circle()
                .fill(.green)
                .frame(width: frameSize * 0.8, height: frameSize * 0.8)

            Checkmark()
                .trim(from: 0, to: innerTrimEnd)
                .stroke(Color.white, style: StrokeStyle(lineWidth: frameSize / 10, lineCap: .round, lineJoin: .round))
                .frame(width: frameSize / 3, height: frameSize / 3)
        }
        .frame(width: frameSize, height: frameSize)
        .onAppear() {
            animate()
        }
    }

    private func animate() {
        withAnimation(.linear(duration: animationDuration)) {
            outerTrimEnd = 1.0
        }
        withAnimation(
            .linear(duration: animationDuration/2)
            .delay(animationDuration)
        ) {
            innerTrimEnd = 1.0
        }
    }
}
