//
//  FatCardView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI

struct FatCardView: View {
    let title:String
    let deadline:String

    var body: some View {
        VStack(alignment: .leading) {
            HStack (alignment: .top)  {
                Text(title).font(.title3).bold()
                Spacer()
                HStack{
                    Image(systemName: "calendar").font(.subheadline)
                    Text(deadline).font(.subheadline).bold()
                }
              
            }
            HStack {
                
                HStack {
                    TagWithLogoView(title: "Easy", color: .blue)
                    TagWithLogoView(title: "Now", color: .blue)
                }
                Spacer()
                Image(systemName: "checkmark.circle.fill").font(.title)
            }
            
        }.padding(15)
            .background(AppPalette.primary)
            .cornerRadius(20)
    }
}

struct FatCardView_Previews: PreviewProvider {
    static var previews: some View {
        FatCardView(title: "This Is A Title", deadline: "21 Jan 2023")
    }
}
