//
//  DashboardView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            HStack {
                Text("Lets Reach Our Dreams!")
                    .font(.system(size: 60))
                    .bold()
                
            }
            .padding(.bottom, 30)
            HStack {
                HStack {
                    Text("Cards")
                        .font(.title)
                        .bold()
                    TagView(title: "20", color: .blue)
                    
                    
                }
                Spacer()
                HStack {
                    Text("Cards")
                        .font(.title)
                        .bold()
                    
                    TagView(title: "20", color: .blue)
                  
                }
            }
            HStack {
                
                DonutChartView(
                    donuts: [
                        Donut(startValue: 0, endValue: 1, color: Color.blue.opacity(0.5)),
                        Donut(startValue: 0, endValue: 0.27, color: Color.red.opacity(0.5)),
                        Donut(startValue: 0.28, endValue: 0.4, color: Color.purple.opacity(0.5))
                    ]
                ).padding(.leading, 15)
                Spacer()
                VStack(spacing: 30) {
                    HStack {
                        Text("0/0")
                            .font(.headline)
                            .bold()
                        Text("Cards Completed")
                            .font(.headline)
                            .bold()
                        
                    }
                    HStack {
                        Text("0/0")
                            .font(.headline)
                            .bold()
                        Text("Cards Completed")
                            .font(.headline)
                            .bold()
                        
                    }
                    HStack {
                        Text("0/0")
                            .font(.headline)
                            .bold()
                        Text("Cards Completed")
                            .font(.headline)
                            .bold()
                        
                    }
                }
               
            }.padding(.top, 30)
           
        }
        
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
