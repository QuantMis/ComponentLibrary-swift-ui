//
//  DonutChartView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI
import UIKit

extension FloatingPoint {
    var degreesToRadians: Self { self * .pi / 180 }
    var radiansToDegrees: Self { self * 180 / .pi }
}

struct Donut: Identifiable {
    var id = UUID()
    var startValue: Float
    var endValue: Float
    var color: Color
}

struct ScaledArcBezier: Shape {
    let startValue: Float
    let endValue: Float
    
    static func makeArcPath(startAngle: Float, endAngle: Float) -> UIBezierPath {
        UIBezierPath(arcCenter: CGPoint(x: 0.5, y: 0.5),
                     radius: 0.5,
                     startAngle: CGFloat(startAngle.degreesToRadians),
                     endAngle: CGFloat(endAngle.degreesToRadians),
                     clockwise: true)
    }
    
    func path(in rect: CGRect) -> Path {
        let startAngle = 360.0 * startValue
        let endAngle = 360.0 * endValue
        let path = Path(Self.makeArcPath(startAngle: startAngle, endAngle: endAngle).cgPath)
        let multiplier = min(rect.width, rect.height)
        return path
            .applying(CGAffineTransform(scaleX: multiplier, y: multiplier))
            .applying(CGAffineTransform(translationX: rect.midX, y: rect.midY).inverted())
            .applying(CGAffineTransform(rotationAngle: CGFloat(90.0.degreesToRadians)).inverted())
            .applying(CGAffineTransform(translationX: rect.midX, y: rect.midY))
    }
}


struct DonutChartView: View {
    let donuts: [Donut]
    var body: some View {
        ZStack {
            ForEach(donuts, id: \.id) { donut in
                ScaledArcBezier(startValue: donut.startValue, endValue: donut.endValue)
                    .stroke(style: StrokeStyle(lineWidth: 25, lineCap: .round, lineJoin: .round, miterLimit: 0, dash: [], dashPhase: 0))
                    .foregroundColor(donut.color)
            }
        }
        .frame(width: 130, height: 130)
    }
}

struct DonutChartView_Previews: PreviewProvider {
    static var previews: some View {
        DonutChartView(
            donuts: [
                Donut(startValue: 0, endValue: 1, color: Color.blue.opacity(0.5)),
                Donut(startValue: 0, endValue: 0.27, color: Color.red.opacity(0.5)),
                Donut(startValue: 0.28, endValue: 0.4, color: Color.purple.opacity(0.5))
            ]
        )
    }
}
