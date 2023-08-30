//
//  BarChart2View.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI
import Charts

struct ToyShape2: Identifiable {
    var color: String
    var type: String
    var count: Double
    var id = UUID()
}
struct BarChart2View: View {
    var data: [ToyShape2] = [
        .init(color: "Fitness", type: "Mon", count: 1),
        .init(color: "Fitness", type: "Tue", count: 1),
        .init(color: "Fitness", type: "Wed", count: 1),
        .init(color: "Fitness", type: "Thu", count: 1),
        .init(color: "Fitness", type: "Fri", count: 1),
        .init(color: "Fitness", type: "Sat", count: 1),
        .init(color: "Fitness", type: "Sun", count: 1),
        
        .init(color: "Coding", type: "Mon", count: 1),
        .init(color: "Coding", type: "Tue", count: 1),
        .init(color: "Coding", type: "Wed", count: 1),
        .init(color: "Coding", type: "Thu", count: 1),
        .init(color: "Coding", type: "Fri", count: 1),
        .init(color: "Coding", type: "Sat", count: 1),
        .init(color: "Coding", type: "Sun", count: 1),
        
        .init(color: "Project A", type: "Mon", count: 1),
        .init(color: "Project A", type: "Tue", count: 1),
        .init(color: "Project A", type: "Wed", count: 1),
        .init(color: "Project A", type: "Thu", count: 1),
        .init(color: "Project A", type: "Fri", count: 1),
        .init(color: "Project A", type: "Sat", count: 1),
        .init(color: "Project A", type: "Sun", count: 1),
        
        .init(color: "Job", type: "Mon", count: 1),
        .init(color: "Job", type: "Tue", count: 1),
        .init(color: "Job", type: "Wed", count: 1),
        .init(color: "Job", type: "Thu", count: 1),
        .init(color: "Job", type: "Fri", count: 1),
        .init(color: "Job", type: "Sat", count: 1),
        .init(color: "Job", type: "Sun", count: 1),
        
        
    ]
    var body: some View {
        Chart {
            ForEach(data) { item in
                BarMark(
                    x: .value("Days", item.type),
                    y: .value("Task Completed", item.count)
                )
                .foregroundStyle(by: .value("Shape Color", item.color))
            }
            
        }.padding()
            .chartForegroundStyleScale([
                "Fitness": .green, "Coding": .blue, "Project A": .pink, "Job": .yellow
            ])
    }
}

struct BarChart2View_Previews: PreviewProvider {
    static var previews: some View {
        BarChart2View()
    }
}
