//
//  LineChartTransparentView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI

struct LineChartTransparentView: View {
    var data: [CGFloat] = [0,0,10,0,10,10,0,10,100,0,10,10,0,30,10,0,10,10,0,10,10,0,10,10,0,10] // Example data points
        let maxHeight: CGFloat = 20 // Maximum chart height
        
        var body: some View {
            GeometryReader { geometry in
                Path { path in
                    path.move(to: CGPoint(x: 0, y: maxHeight - (data.first ?? 0)))
                    let stepX = geometry.size.width / CGFloat(data.count - 1)
                    for (index, value) in data.enumerated() {
                        let x = stepX * CGFloat(index)
                        let y = maxHeight - value
                        path.addLine(to: CGPoint(x: x, y: y))
                    }
                }
                .stroke(Color.white, lineWidth: 4) // Customize the line color and thickness
            }
        }
}

struct LineChartTransparentView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartTransparentView().frame(height: 150)    }
}
