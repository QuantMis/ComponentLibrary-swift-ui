//
//  ContentView.swift
//  componentlibrary
//
//  Created by Israa on 23/08/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Developed By").font(.title3).bold()
                        LabelView()
                    }
                    VStack(alignment: .leading) {
                        Divider().padding(.vertical)
                        Text("Tags").font(.title3).bold()
                        HStack {
                            TagView(title: "Feature", color: AppPalette.primary)
                            TagWithLogoView(title: "Feature", color: AppPalette.primary)
                        }
                    }
            
                    VStack(alignment: .leading) {
                        Divider().padding(.vertical)
                        Text("Buttons").font(.title3).bold()
                        ButtonView(title: "Login", action: {})
                        ButtonWithLogoView(title: "Login", action: {})
                    }
                   
                    VStack(alignment: .leading) {
                        Divider().padding(.vertical)
                        Text("Charts").font(.title3).bold()
                        BarChartView().frame(height: 200)
                        BarChart2View().frame(height: 200)
                    }
                    
                    VStack(alignment: .leading) {
                        Divider().padding(.vertical)
                        Text("Cards").font(.title3).bold()
                        ThinCardView(title: "Work on this Library Components", deadline: "1st Jan 2023")
                        FatCardView(title: "Create Cards Component", deadline: "1st Jan 2023")
                    }
                    VStack(alignment: .leading) {
                        Divider().padding(.vertical)
                        Text("Dashboard").font(.title3).bold()
                        DashboardView()
                    }
                    
                  
                  
                  
                    
                    
                    
                    
                }
                .padding()
            }
            .navigationBarTitle("Component Library")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
