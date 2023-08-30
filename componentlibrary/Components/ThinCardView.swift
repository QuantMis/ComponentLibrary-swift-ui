//
//  ThinCardView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI

struct ThinCardView: View {
    let title: String
    let deadline: String
    var body: some View {

        VStack(alignment: .leading) {
            HStack (alignment: .top) {
                Text(title).font(.title3).bold()
                Spacer()
                TagWithLogoView(title: deadline, color: AppPalette.primary)
            }
            LineChartTransparentView()
                .opacity(0.2)
                .frame(height: 30)
            
        }.padding(15)
            .background(AppPalette.primary)
            .cornerRadius(20)

    }
}

struct ThinCardView_Previews: PreviewProvider {
    static var previews: some View {
        ThinCardView(title: "Some Text Hello World nhgi hasd", deadline: "24 Jan 2023")
    }
}
