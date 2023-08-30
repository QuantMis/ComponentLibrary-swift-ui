//
//  BarChartView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI
import Charts

struct ToyShape: Identifiable {
    var type: String
    var count: Double
    var id = UUID()
}
struct BarChartView: View {
    var data: [ToyShape] = [
        .init(type: "Mon", count: 5),
        .init(type: "Tue", count: 3),
        .init(type: "Wed", count: 4),
        .init(type: "Thu", count: 7),
        .init(type: "Fri", count: 5),
        .init(type: "Sat", count: 2),
        .init(type: "Sun", count: 4),
    ]
    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark(
                    x: .value("Days", item.type),
                    y: .value("Task Completed", item.count)
                )
            }
            
        }.padding()
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView()
    }
}
