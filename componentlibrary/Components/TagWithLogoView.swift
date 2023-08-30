//
//  TagWithLogoView.swift
//  componentlibrary
//
//  Created by Israa on 24/08/2023.
//

import SwiftUI

struct TagWithLogoView: View {
    let title:String
    let color:Color
    
    var body: some View {
        HStack {
            Image(systemName: "globe").foregroundColor(.white)
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                
        }
        .padding(EdgeInsets.init(top: 5, leading: 5, bottom: 5, trailing: 10))
        .background(.black)
        .cornerRadius(15)
        
        
    }
}

struct TagWithLogoView_Previews: PreviewProvider {
    static var previews: some View {
        TagWithLogoView(title: "Urgent", color: AppPalette.primary)
    }
}
